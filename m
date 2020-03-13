Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 4E835184D6A
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 18:17:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584119878;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pfSaG14Bjlb0SD3gAwKIyDHLfT758srLodpGx0tSL28=;
	b=Oc6zgOE8VbDqaxRfso04YFP13JjfTjkw/aNfU9DAiagIxYhbtjOtdAmHcOzSG1d4aODSnK
	PC+eFhOvJIBNTuIn5imn0SF5Q8tJrE5i0BBICkxjdqh9Rj78FTcpRKIXxxZXzaWL0ZW9od
	k4dQUlHEOqs2yZbEPwn8t51UjTbdg3U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-Sqp4aO64MAKUJ84cUhUmmw-1; Fri, 13 Mar 2020 13:17:55 -0400
X-MC-Unique: Sqp4aO64MAKUJ84cUhUmmw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2EEE18C35A6;
	Fri, 13 Mar 2020 17:17:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23DEC8FBED;
	Fri, 13 Mar 2020 17:17:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A61698174D;
	Fri, 13 Mar 2020 17:17:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DHHeib012426 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 13:17:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ECDDA101B54E; Fri, 13 Mar 2020 17:17:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8859101B54A
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:17:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14682800297
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:17:38 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-216-L1odlwUlNba4V0B7djgGWg-1; Fri, 13 Mar 2020 13:17:35 -0400
X-MC-Unique: L1odlwUlNba4V0B7djgGWg-1
Received: by mail-wr1-f44.google.com with SMTP id r15so13101979wrx.6
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 10:17:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
	:subject:mime-version:content-transfer-encoding;
	bh=FYla6XRKNvnu+pURpqjGpHeIJ0fH0KW48MkHJ3UJNZs=;
	b=WUnNFuh2ZrEapRG8ziQ/juqCPFYTBRLZ83xdw2KDFBaH08ZlRYR+3L0I466DY6Pueo
	NUHJRkWNRbMiSn8JUWl4twVHuB20PE+K0IOUPyhbgdSgqum3P6E6MLyunRzSx9xnKypo
	DfknP3zm0+Cfk15xN8I0fY5PFqVCE9dzmx9dvDe7uJ80uJqyYDAeBL09ns1+pKG0h4D8
	peCYf6u9Qk+zUSWLS/fUK5uXu8UrL7S13VhUO3At6ocjwasEjymb2rKcjmG2XQvW4wMb
	lPTJnxGBZnBKILru9x3sOz/+G12uktN3rsjIWzTC1mO3I6KOK8PySH2LQ2Dedp1/MNQ7
	d3tw==
X-Gm-Message-State: ANhLgQ2YUPHNDEvMeNKCJFL3FiIo1UJcn0ou1exB6KQtghzvAApMhbmZ
	YGLwyhVxSRd6TNXyTgSGWdmkU4kGAkE=
X-Google-Smtp-Source: ADFU+vuqpjAS4k7mAfpbHkdzAYjP2YmN1Yrd3GWOqu9OuGMVkwczsnr7VG952s5yKnnx8QR48tqe7g==
X-Received: by 2002:adf:e847:: with SMTP id d7mr17686742wrn.337.1584119854303; 
	Fri, 13 Mar 2020 10:17:34 -0700 (PDT)
Received: from [127.0.0.1] (cpe-75-189-192-174.nc.res.rr.com. [75.189.192.174])
	by smtp.gmail.com with ESMTPSA id
	t81sm17371919wmb.15.2020.03.13.10.17.33 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Mar 2020 10:17:33 -0700 (PDT)
Date: Fri, 13 Mar 2020 17:17:29 +0000 (UTC)
To: blinux-list@redhat.com
Message-ID: <6fab7d70-e1d3-47ab-a34d-ac5d6d0eb032@localhost>
In-Reply-To: <alpine.NEB.2.21.2003131105300.24751@panix1.panix.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<alpine.NEB.2.21.2003131105300.24751@panix1.panix.com>
Subject: Re: Stormux is born.
MIME-Version: 1.0
X-Correlation-ID: <6fab7d70-e1d3-47ab-a34d-ac5d6d0eb032@localhost>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've had pretty good luck reading the regular Reddit website, so I'll look into putting Stormix on Reddit. Thanks for the suggestion.
~Kyle


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

