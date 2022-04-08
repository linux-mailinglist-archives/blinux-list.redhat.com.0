Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBA14F9144
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 11:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649408463;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mRLSvfy0DjnymZn9HUz+jU8+N788OHM9tnFWTgBf2ag=;
	b=ARSX5UzQlM0JETkfhkUPGgLQ/89RlEFBOI4bZ692mZbGYkKjrUBvrQm7TscvWEKlCqaiZj
	xPw/HH5OA604JjLeq975h24swgc58py5+0m9HBHIhaY4CM/LfG21XcNMhgTugP+wgEb9SZ
	WhGkmKsjDfbcocj79CHaWE2BKAvCAFM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-609-3Sp1bLgUPrCY3FrUyEmU5Q-1; Fri, 08 Apr 2022 05:01:00 -0400
X-MC-Unique: 3Sp1bLgUPrCY3FrUyEmU5Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13B61100BAA7;
	Fri,  8 Apr 2022 09:00:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 030BC145B96C;
	Fri,  8 Apr 2022 09:00:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 280891940348;
	Fri,  8 Apr 2022 09:00:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 8 Apr 2022 10:59:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Good Orca friendly terminal file manager?
To: blinux-list@redhat.com
References: <mailman.7330.1649379323.111201.blinux-list@redhat.com>
 <mailman.7199.1649379978.111209.blinux-list@redhat.com>
 <mailman.7337.1649381932.111201.blinux-list@redhat.com>
In-Reply-To: <mailman.7337.1649381932.111201.blinux-list@redhat.com>
Message-ID: <mailman.7255.1649408454.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy,

i created some for F123 years back.
maybe you wanna give a try:
https://github.com/chrys87/dragonFM

cheers chrys

Am 08.04.22 um 03:38 schrieb Linux for blind general discussion:
> A long thread in debian-user where a few people think mc stinks since a
> user can't choose what editor they want to use inside mc.  There's pilot
> and maybe a graphical version of pilot and lfn and fdclone and inside
> emacs dired.
>
> On Fri, 8 Apr 2022, Linux for blind general discussion wrote:
>
>> Aside from ls, mv, cp, etc. the only console file manager I'm aware of
>> is midnight commander, which is provided by the mc package in Debian
>> and presumably other distros as well. Only ever used it in the
>> console, so I can't say how well it works in a terminal emulator with
>> Orca.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

