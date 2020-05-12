Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id B13DF1CF783
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 16:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589294592;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HFVrPY92NTNl5kKEXjvHMgPrfVnBLG95C3h5HnPDWXM=;
	b=R4NYZj8S5GUUtbJnYKHCJTonc5NyRliTvWqIwZNy3Dj1vNakBA8qrJVlzfhnJZRsSjnpPr
	BZADvcAgciqqXZ5A1/iCoe0Z7b67omveQVLrDA+6hYI9KAg0/DrClOInmRIEfGK4IpITPL
	NOp30TKAtd64AEEM8U003JJZVrBF/h8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-UpsWh_bUNwepb5IBIZyo1w-1; Tue, 12 May 2020 10:43:10 -0400
X-MC-Unique: UpsWh_bUNwepb5IBIZyo1w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4541108BD19;
	Tue, 12 May 2020 14:43:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F13543420B;
	Tue, 12 May 2020 14:43:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD64F4E984;
	Tue, 12 May 2020 14:42:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CEgoU9020246 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 10:42:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 50D0E2166BA2; Tue, 12 May 2020 14:42:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C5022166BA0
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:42:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4ECD3833B49
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:42:48 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-217-JGaGJe08O2OGEvv9RsGasQ-1; Tue, 12 May 2020 10:42:45 -0400
X-MC-Unique: JGaGJe08O2OGEvv9RsGasQ-1
Received: by mail-ot1-f52.google.com with SMTP id 72so10699972otu.1
	for <blinux-list@redhat.com>; Tue, 12 May 2020 07:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=NM+8z2zS+H+ze8SbWRKN8b3D+3fgrDWftgcWlkQgjdM=;
	b=DlWuJFwHpHjC4+iRCH+ycg7anc2ViTjf31kVkzJW/pQDW+FEEubRgANqqNS2ht6sqw
	R1ue+R7kgwwzbtTHBQ0/0nW0pRlLR6qRtfFXQGoveHy9Fn5QM1eHFmAWFd4/atv/jtbC
	Z2PVkd2y7Z0djqeuSsbn3UKDDQXl9v9m2O2whmnebJU5TYcWTzeAwOz/9RoH2oz2wkIR
	zOy7EbA9/fuCmKZnYvvASzpNZf3P6IP8Y51S3vJR3zCIYEI51Uz6ot9NYLFZeTGmeZ0E
	GDes89buXcU+ztvOf/ks03+sLZaJY4fcV4RKgIGxOrNZEyYcN44VvUnIUfYNaWa/lt6N
	YztA==
X-Gm-Message-State: AGi0PuY3zCaBq7DKerN3+/M++J902Ph1Z7ZP5BGIHlJ2ww6Oh/M8b2HR
	qVuA8hmEoikPW48R/FL+6CfgPuZr
X-Google-Smtp-Source: APiQypLD5E0YX//J8xiZOx6AKmTZdIHa7n5yHNbBI4imvRBHJzYxYsEvuZ8CfbobNEjesPFmaXIU+A==
X-Received: by 2002:a9d:876:: with SMTP id 109mr17307759oty.327.1589294564658; 
	Tue, 12 May 2020 07:42:44 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:3180:26f:5f17:ba4b?
	([2601:3c2:8200:9360:3180:26f:5f17:ba4b])
	by smtp.gmail.com with ESMTPSA id v8sm3723588oos.0.2020.05.12.07.42.43
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 May 2020 07:42:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: b s d and orca
Message-Id: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
Date: Tue, 12 May 2020 09:42:42 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Anyone know of a distribution of b s d with orca in its installer?
I had never used b s d before, but thought of giving it a try.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

