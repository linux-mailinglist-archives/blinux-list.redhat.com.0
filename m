Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEE86F6EB7
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 17:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683213173;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CQ4aaV+c713vHtz0dE3u9WDEix6GbsDP9v7astwt1GE=;
	b=W11cN8sxQ8BSON6HI1CczQW79PHEvj1R1wX8BDkta2GXE0dpknMdf112iHu36KLMHy+WiM
	k0EXm3vS0yj7TxZLH8fKeMPgaehSmKCWtiUVQV3E3hPDTYSr6+XToeH6QbjN7nvDyyjHD1
	DxKHLWlnrRCLpEKLm6AaURYPXHzc9sI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-MkQkY_dmO9-SKcYFkmHzEw-1; Thu, 04 May 2023 11:10:32 -0400
X-MC-Unique: MkQkY_dmO9-SKcYFkmHzEw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1F1E2999B33;
	Thu,  4 May 2023 15:10:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E3C5492B00;
	Thu,  4 May 2023 15:10:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 570791946A49;
	Thu,  4 May 2023 15:09:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 4 May 2023 17:09:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
To: blinux-list@redhat.com
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
 <mailman.1628.1683140218.290941.blinux-list@redhat.com>
 <mailman.1717.1683182658.290935.blinux-list@redhat.com>
 <mailman.1846.1683185639.290938.blinux-list@redhat.com>
In-Reply-To: <mailman.1846.1683185639.290938.blinux-list@redhat.com>
Message-ID: <mailman.1820.1683212973.290937.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE, en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy,

evdev should be activated by default on all linux kernels as it controls 
the events of the input peripheries.

what happens if you use the fedora package manager to install evdev 
instead of pip?
the package might be named:
python-evdev
python3-evdev
or similar

cheers chrys

Am 04.05.23 um 09:33 schrieb Linux for blind general discussion:
> evdev is part of the linux kernel so why this ought to have come up as an
> issue puzzles me now I think of it.  If a package doesn't install perhaps
> try modprobe evdev as sudo or root and see if that works.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
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

