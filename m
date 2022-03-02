Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA464CA42C
	for <lists+blinux-list@lfdr.de>; Wed,  2 Mar 2022 12:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646221876;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7zBhLq/sJygbWJGJtaj8PkncNlRqHpKHQqCC8R1nlPQ=;
	b=SGbUyuDXU1mQGMRpky+51J2+AgWOqx/51Kn4C1NdzIwXtAQ/jnHiBNbiTBR1FVY2tU1hBh
	rDJMl5l9kpDDB3a0gWGr/WuYHS/eZUCXhSZAXY7FDoOqKMNJOQB/d5vpUQjf6Oc49YPBd9
	Oqf+4Upjxt+AHuW/eHN5SMyhCflMczA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255-VtmEXtZnP2yS4Rgg8a9_5Q-1; Wed, 02 Mar 2022 06:51:12 -0500
X-MC-Unique: VtmEXtZnP2yS4Rgg8a9_5Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F202F18C43C0;
	Wed,  2 Mar 2022 11:51:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B0B21006938;
	Wed,  2 Mar 2022 11:51:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 63D3A1809C98;
	Wed,  2 Mar 2022 11:50:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 222BobG3030521 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Mar 2022 06:50:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2D0C020268FE; Wed,  2 Mar 2022 11:50:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 289552026D65
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 11:50:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE266811E78
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 11:50:31 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-561-RNyds1rsOC-opCYucBADmg-1; Wed, 02 Mar 2022 06:50:30 -0500
X-MC-Unique: RNyds1rsOC-opCYucBADmg-1
Received: by mail-wr1-f47.google.com with SMTP id t11so2352530wrm.5
	for <blinux-list@redhat.com>; Wed, 02 Mar 2022 03:50:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition;
	bh=MX/NJ7BigAXqRqXZDJEz96JKKZLqmIKHDYhWtBU+F8M=;
	b=Ts/pByEXlnNV2dxrcMHnubehy1kTtOWzHP2TxwAKbeTCHL2Mz7/7NXDp9e8lydRPhq
	jcaaCRR1AI+CFEKapiMMuWzn1ShO8EjAwFU2HZ15R07RDxmpNyttcwHuEqqrSYqVBso9
	f5Dk2+GmP7dbC2QMQtlG/dNTyoL/mxpPOjpKjdYSPcYH0TCDihPYuyEZ/OnhW5/8aPgA
	YHuPK6Puc4DtCWJG9NLdO19s79IurB4cdQt5/BR3oVNQ33LaoWY8rcmVVZYVYTduAAB5
	9n11Dz+KE2OczEJgOjc2CA9eyfoRT90fGs8IVSOdL/KiHrlXsBytUKO3NiIONmVijAFT
	M3ng==
X-Gm-Message-State: AOAM533EHRYz08Z9liJTNNGpnENQ1V5LQdXv3wUQTHUJhGl0E9O7Nfwa
	X9N0GPoPQDJQ3fEqTRrshxtVxh1kWlqDMw==
X-Google-Smtp-Source: ABdhPJyF/hJt0mLXg1ib8KuRnS3DONMJC+KlbSa0zWtSV0Z85tHgQs+OV9WCaIwxWoshvrH4YgMyGA==
X-Received: by 2002:adf:f7ce:0:b0:1ef:814d:fac9 with SMTP id
	a14-20020adff7ce000000b001ef814dfac9mr15662683wrq.79.1646221828893;
	Wed, 02 Mar 2022 03:50:28 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	u4-20020adfdb84000000b001e8d8ac5394sm17504592wri.110.2022.03.02.03.50.28
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 02 Mar 2022 03:50:28 -0800 (PST)
Date: Wed, 2 Mar 2022 11:50:41 +0000
To: blinux-list@redhat.com
Subject: Any progress on .pdf viewing?
Message-ID: <Yh9aEWNufoEE0Bvp@waffles>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been out of the loop on pdf files for a bit

So, what's the most accessible way to view a pdf file, either on a
terminal, or desktop GUI program? I'm trying to put together a list so I
can throw it on a new install

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

