Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B626F0636
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 14:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682599969;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zAFhmyaMEO34Zz/sEPO5UV0Cvm5Bugu2b+hqJNrgEjE=;
	b=IDHZcMKMQK43npPeOwnkjvSWe8d7c4ts4irR4bNtw5fQNne7xJspqDpSkTxnctiLQYsqD5
	YjUEdhe4yLjJQ6BR2eKjaHKrDuPuRJGicEl67Qzvopngz10LunicYERvulAu7e9imD6saP
	ZUryufrEwJbQt0ed747zfKX/ZKj5K0A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-412-HoZULS00Pj6u2Pp_6blO6A-1; Thu, 27 Apr 2023 08:52:48 -0400
X-MC-Unique: HoZULS00Pj6u2Pp_6blO6A-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9667884EC4;
	Thu, 27 Apr 2023 12:52:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 853FA492B03;
	Thu, 27 Apr 2023 12:52:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EA25E1946A50;
	Thu, 27 Apr 2023 12:52:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Apr 2023 13:52:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Two Arch beginner questions
To: blinux-list@redhat.com
References: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
In-Reply-To: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
Message-ID: <mailman.1845.1682599953.2351824.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Personally, I use startx for starting things and have it set up to auto 
launch the graphical session (which you can find how to do on the Arch 
wiki and is harmless)


Secondly, no, espeakup and Fennrir work on the TTY mostly. You /can/ 
have Fenrir work on a terminal but I have little experience with this.


There's two sorts of console in Linux


One, you have your TTY, or actual console


2. You have a terminal which is a mini console in the graphical 
interface, such as Mate-terminal


On a graphical interface like Mate, you use Orca for a screenreader, it 
covers using a terminal out of the box so you are sorted there



On 4/27/23 12:58, Linux for blind general discussion wrote:
> Hi,
>
> today I installed Arch Linux for the first time. Now I have fully 
> setup the console and now, it is time for graphical interface. I will 
> use Mate desktop. I know how to install it, but I have a question 
> related to display manager. Can you recommend me some display manager 
> for Mate desktop, which is packaged for Arch and configured for a11Y 
> (start Orca in the manager)
>
> And my second question is related to console screen readers. Espeakup 
> and Fenrir are included. Which of these is better for using console 
> apps, such as email clients, web browsers etc? Is espeakup developed 
> or deprecated?
>
> Thanks,
>
> Pavel
>
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

