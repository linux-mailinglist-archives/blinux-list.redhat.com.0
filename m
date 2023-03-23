Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D82A36C62BC
	for <lists+blinux-list@lfdr.de>; Thu, 23 Mar 2023 10:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679562393;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Swnu8pPMWxpvan6AaUYuLVfrLPk5v/6GEdjkTb2e3J8=;
	b=SBj/tMVHD4Zm0E8Lzkb3BqoJoTradGMFNnlDeMIkETDaYYktKoURTRTyYaadKN+UuZ7Zt+
	jJ5Hrvk+UlO/byqd/oC/YwVDkiIHCSiQd/Sm9nPwZyxGnRAzxyAe3hcmFeQD9iJmTKyHUA
	yNycapwS6G2ZygXxA8SjVLq5BnkaGdM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-98-ETMPk3NsOeqck3FipHVGGA-1; Thu, 23 Mar 2023 05:06:30 -0400
X-MC-Unique: ETMPk3NsOeqck3FipHVGGA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A279385A5B1;
	Thu, 23 Mar 2023 09:06:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A97301121314;
	Thu, 23 Mar 2023 09:06:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 82E4C1946A43;
	Thu, 23 Mar 2023 09:06:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Mar 2023 05:06:12 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
In-Reply-To: <mailman.1311.1679555916.636358.blinux-list@redhat.com>
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1227.1679562386.636360.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Nvda is mostly written in python.  I don't know what was used for thunder
screen reader, lightning screen reader, and kurzweil personal screen
reader.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and amo. Please use in that
order." Ed Howdershelt 1940.

On Thu, 23 Mar 2023, Linux for blind general discussion wrote:

> Hi,
>
>  > However, other OS's have rusty screenreaders.
>
>
> Interesting, could you be more specific on this? From those I know, NVDA
> is Python & C/C++, Jaws is written entirely in C++ if I remember correctly.
>
> VoiceOver, just like the two is older than Rust itself, so I guess it's
> written in the Apple's middle-level languages.
>
> While Android has a Java centered accessibility system.
>
>
> I searched screenreader in Rust, but found "just" Odilia.
>
>
> Best regards
>
>
> Rastislav
>
>
> D?a 22. 3. 2023 o 19:21 Linux for blind general discussion nap?sal(a):
> > However, other OS's have rusty screenreaders.
> >
> >
> > Cheers:
> > Aaron Spears, AKA Valiant8086 General Partner at Valiant Galaxy Associates "we make (VERY GOOD AUDIOGAMES) for the blind comunity" http://valiantGalaxy.com
> >
> > On 3/22/2023 11:32 AM, Linux for blind general discussion wrote:
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

