Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1386F56CAF9
	for <lists+blinux-list@lfdr.de>; Sat,  9 Jul 2022 19:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657389362;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IHkzufJkcX+GMSVm2fe12sU6/r+XL+FyEQU0DFTXjgo=;
	b=iueF+iYict4RsW78N0EUGmZRrTKx+tVGqR9UTVLkBH7tJrVZzjpQtZk/Xqo1N71WY8+IbB
	247MNLvUgOuJdYlBdteF8biN7JkAHYG+QrxxDQiNrO5jXdWxUYQya+dhh6lMCUBvARFa25
	o5Uu1MVN2CronjkqYe6A4f0/fcyBwS8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-141-SgOMax1jMSiJUr6b56JXMg-1; Sat, 09 Jul 2022 13:55:58 -0400
X-MC-Unique: SgOMax1jMSiJUr6b56JXMg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A6E8101A5AD;
	Sat,  9 Jul 2022 17:55:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 72ACA2166B26;
	Sat,  9 Jul 2022 17:55:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0BF07194707B;
	Sat,  9 Jul 2022 17:55:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
 tests=[ALL_TRUSTED=-1] autolearn=disabled
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: I3wm, any progress?
Date: Sat, 9 Jul 2022 19:55:37 +0200
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.32225.1657370151.111208.blinux-list@redhat.com>
Message-ID: <mailman.3721.1657389350.3475251.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!
Is this another web browser or is it a desktop manager 
> 9 juli 2022 kl. 14:34 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> 
> 
> Hi,
> 
> Yes, I use I3WM as my daily driver on Arch Linux. The trick with being
> productive with I3 is to configure its config file (mine is in
> ~/.config/i3/config).
> 
> The manual is straightforward. Since I do not do the taskbar checking,
> that is where you may have problems for checking notifications and
> battery status etc.
> 
> Linux for blind general discussion <blinux-list@redhat.com> writes:
> 
>> So, I was told the other week I3 works with Orca.
>> 
>> Anyone had any luck with getting i3 to work with Orca up till now? I 
>> mean, if it can be made to work, it'd suit my laptop more than a full 
>> fledged desktop. So I'm stil curious on this
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

