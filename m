Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD8745A9EA
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 18:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637688155;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YUv3sOH6dMsxNyrZOUUcL14wDdaFXnqbUUqGAA7TtE0=;
	b=HfZ6fwdpFb6nw0NL5SM4uAf/xI0jsuwGSvY/60r3r2UvJGkaYhGoCme/+9bZYQFsblnyr8
	wTL0uh872DZdoBDecJ3bNvZfr/onLPQE/tnIAA8rn1Zlnm8vwSpCH4/dhPwSVMuYDh1ugR
	LhnAUlH0uuc8Op7h09eD5mn7PRT//Ic=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-PaJc3KZvMJCMUfGEw90-rA-1; Tue, 23 Nov 2021 12:22:33 -0500
X-MC-Unique: PaJc3KZvMJCMUfGEw90-rA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CCCE10199A0;
	Tue, 23 Nov 2021 17:22:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83E455D6CF;
	Tue, 23 Nov 2021 17:22:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B3FD01832E7F;
	Tue, 23 Nov 2021 17:22:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANHMJWu024513 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 12:22:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 647982026D7F; Tue, 23 Nov 2021 17:22:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EF342026D6A
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:22:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9ADA106656B
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:22:12 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-568-MDTTQyCjML2jZvKrV-MIBg-1; Tue, 23 Nov 2021 12:21:54 -0500
X-MC-Unique: MDTTQyCjML2jZvKrV-MIBg-1
Received: by mail-wr1-f50.google.com with SMTP id r8so40145349wra.7
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 09:21:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=ufpcU3F6B940+4NcbdAwTQbnocMIgjFEDxoKJq0vf+w=;
	b=23RJK1gq6z9te48mEp+LySmy2K/lMrLkPO+ONObROzpOxm9cOcTThkc0OZmPii2yDi
	Kyo0fYpFH0Q/MY1yF8kZJm95cqyq13lfGOOVaNC5jwCd4tzuT/ZOvGB8E3wwfM9o03GD
	4YhVKfT98WZdm4nbaIIoniDcf4G2j6bicNILozzCCwtj+bCUQQ0YhK0iF5+EC6QBS0KI
	olsR62ir1Yatghnc6qGTRYLVtrELYJD5YHH6rTZSLDh4I+QAkkyjngWRVJVHarC9n0qK
	b7VAFA0ftshr2OxEl0u1qS/KjZpGbUbGt1J2AdseNH2i0+4HnMbt7LEVJ3xfV5m0UEG/
	0rpQ==
X-Gm-Message-State: AOAM533eP+zA9qYppZrjmpXGvHnRgcGzKCVtgQbOeBSH56NMiqLDlh0u
	QagQu0RftMumXOHrr3smWlKqmNgff2Dstg==
X-Google-Smtp-Source: ABdhPJxw46KRrwxwnBFdhMu59LUaC82CA5chCn0vkBqrt/BP47GzSMl714kYo5UUhMhXe6VwtdqaYA==
X-Received: by 2002:adf:f947:: with SMTP id q7mr9072747wrr.260.1637688113194; 
	Tue, 23 Nov 2021 09:21:53 -0800 (PST)
Received: from smtpclient.apple ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id
	n184sm1664775wme.2.2021.11.23.09.21.51 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Nov 2021 09:21:52 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: Ok, Jenux finally installed for me!
Message-Id: <B5680B56-6FCB-4768-9404-664C2D069970@gmail.com>
Date: Tue, 23 Nov 2021 19:21:49 +0200
To: blinux-list@redhat.com
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I finally had success installing Jenux, however,, now that I have it on the desktop, I cannot get Orca to talk. If anyone knows how to get it going, I'd be happy to keep the system for the time being.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

