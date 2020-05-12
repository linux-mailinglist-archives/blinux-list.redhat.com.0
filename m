Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id CD9AE1CF786
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 16:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589294628;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pyP+IRWBsmucBHMojuHWYZGPT4b2CVhq8JMqf2FZII8=;
	b=SBRFo1fFL4xwwi8mgFCJkpvo4T98OqePskdsDnf7LgVHidg6BEaJMcAcRJv7Ji4DZYunGF
	oYokSmtHoPM5m6tlXT/zTLDNLdWJGXztHgGVXSwesKnPwRbPQ2kZugauQbtuiPv4lfBYlC
	gdz6H0+JIHw78v5XVzlqETUIukGRM8s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-ymXCERUsO6GivzNq2xEAFA-1; Tue, 12 May 2020 10:43:45 -0400
X-MC-Unique: ymXCERUsO6GivzNq2xEAFA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD94F835B43;
	Tue, 12 May 2020 14:43:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71B1E5D9E5;
	Tue, 12 May 2020 14:43:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10957180954D;
	Tue, 12 May 2020 14:43:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CEhaQN020380 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 10:43:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B644A107291; Tue, 12 May 2020 14:43:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2C0610728D
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:43:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC5948007C8
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:43:33 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-332-pfRQHgd-PJ6BFO25YTF3kA-1; Tue, 12 May 2020 10:43:30 -0400
X-MC-Unique: pfRQHgd-PJ6BFO25YTF3kA-1
Received: by mail-oi1-f176.google.com with SMTP id o24so18429750oic.0
	for <blinux-list@redhat.com>; Tue, 12 May 2020 07:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=5zGY/X/MgD/5PNbujdfs6zAjAzQz5O+ZdK17K2zrJp4=;
	b=OxRuQaKYRw+mrE68BS5V3NC+GkAZBnHOwJXLzgLKLTHJDu4xNz5SGUqPJMN4+vUNIp
	hgws7hj8zFj7SHTkfhx+3ePaE7kGcOavtta1HQ9YTwUKADtrbNdShk923XYu//ScNkTd
	z3a58Exax54ZbmBEpp/UT6cSt/WODuB+0qnu3E0J+lGK4d9YKKYS+CR0hfdBmXGQEtNZ
	wjJ9d08gnN0qMSdOo1RrIUCFQWsPbPZ4/Y5YMDBmfLNVkUyPC27l25gpMQj+dE5SYuoK
	Ihhxsej0IU6Smxxu9Snh8XNbp+dqoa5DNuHbm23VrNwYMClq716SlaLzkMJNIIdbo3Fj
	kPag==
X-Gm-Message-State: AGi0PubhI96AudSMQaGLpKTNwqw0iofzQdmXIshaqY/HFtbl5BGmilaO
	gDdu4gPVz2jCSnlaH7ZymT8NEG5i
X-Google-Smtp-Source: APiQypIk+wkhTkczyjfXiTcAPKCw2UbK1gxKx22UIhBKQ/QIqqe2FK/EUxDTPtdFkXNykIzc+pPh8w==
X-Received: by 2002:aca:fc0a:: with SMTP id a10mr23938547oii.77.1589294609302; 
	Tue, 12 May 2020 07:43:29 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:3180:26f:5f17:ba4b?
	([2601:3c2:8200:9360:3180:26f:5f17:ba4b])
	by smtp.gmail.com with ESMTPSA id v8sm3723588oos.0.2020.05.12.07.43.28
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 May 2020 07:43:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Manjaro linux
Message-Id: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
Date: Tue, 12 May 2020 09:43:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Does Manjaro linux have orca in its installer

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

