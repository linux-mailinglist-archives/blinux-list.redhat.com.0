Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 409496763AB
	for <lists+blinux-list@lfdr.de>; Sat, 21 Jan 2023 05:19:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674274792;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bf+E/S+NkYwKmX+4rN/DULlGXpdsMz3ML2Gno5UYUmE=;
	b=WJzR6ArjsGbg/w/L91GuxC3S74CkEUBRurSVPbdr4EGbPMkcMu0ngurW8oAhKnmGDgPwTj
	16ZxIJ0GLPSa6DTDvHOy13M0uVlTGWuJ6GU523zwlKoXl+ty1by1x0HBmCq6uCxkyYs3VC
	O27kPhcSrX1VmFQ0Z2bk25PnsNys7Oo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-194-7BTdsBwEOB-9mqx-soqLkQ-1; Fri, 20 Jan 2023 23:19:48 -0500
X-MC-Unique: 7BTdsBwEOB-9mqx-soqLkQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69EBF185A794;
	Sat, 21 Jan 2023 04:19:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DDC0F40C2064;
	Sat, 21 Jan 2023 04:19:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A33D21946A6D;
	Sat, 21 Jan 2023 04:19:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 20 Jan 2023 20:19:31 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: new version of jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.286.1674235413.8169.blinux-list@redhat.com>
In-Reply-To: <mailman.286.1674235413.8169.blinux-list@redhat.com>
Message-ID: <mailman.358.1674274777.8176.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

what is new in the latest version?

On 1/20/2023 9:23 AM, Linux for blind general discussion wrote:
> Not ready for download.  The sha512sum file up on the website to check the
> iso's integrity doesn't match.  This one probably won't have any ability
> to install on thinkpenguin computers either since the last three isos also
> failed but I'll check it out just to make sure the loosing streak remains
> unbroken.
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
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

