Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 066D34CECEA
	for <lists+blinux-list@lfdr.de>; Sun,  6 Mar 2022 18:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646589214;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g5S+5UQhkgcTWk/M9vZpx1CrvU1G53N+6UY+AK6F3lU=;
	b=Rb7Mn3hDFJGW4I2xoTt9lDEOWhPkTaQXFeuh6pcVq02wWCgj4HwIeSAUylOETv7xkMUXYr
	N5D22JjA5TEdxe74VxeXGKSp8C5pJ+SNLAIG/k6OMsbRhZOdqXaYZEERkH+xNWBR+/HYzl
	oWE+Kl5gHpLqJv6UyOdYdoRjAK2uoYs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-8L4kyKoTPOW_iAhp468dZQ-1; Sun, 06 Mar 2022 12:53:30 -0500
X-MC-Unique: 8L4kyKoTPOW_iAhp468dZQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32F43185A7B2;
	Sun,  6 Mar 2022 17:53:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6283A2166B25;
	Sun,  6 Mar 2022 17:53:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 060B01931BD6;
	Sun,  6 Mar 2022 17:53:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 6 Mar 2022 18:44:12 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is Their a Later Version of Speechd-up?
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.9.1646583072.111206.blinux-list@redhat.com>
 <mailman.14.1646588250.111205.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.14.1646588250.111205.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.17.1646589207.111205.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion, le dim. 06 mars 2022 18:37:11 +0100, a ecrit:
> the most recently updated git repo is the one from Chrys:
> https://github.com/chrys87/speechd-up
> 
> AFAIK there is no speak-with command in Debian, only in Slint, but I could be wrong.

It would be useful to submit the speak-with script to upstream, so that
all distributions benefit from it, and not only Slint.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

