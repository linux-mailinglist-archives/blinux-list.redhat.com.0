Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B946B28EC
	for <lists+blinux-list@lfdr.de>; Thu,  9 Mar 2023 16:37:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678376221;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=13X+yGL7JhZeXoKD2rllcJqmRi3QTX3iU+pHxSJ8eH4=;
	b=XIybZf2E9Eq3EMt6kOY12jaOvfe7sA9gdpVAk4tIwJ9Gu4Y5+TeOrWr3w5/wzS9RJT+pay
	225qVcywPMC7K2SVPaVGqvcNApNIJ9PcoJ8Bh8opHQ/j9Y5w4dcGOq5DxKWP/1u9WJtUqb
	gKXAwNfl/6xfLAEOhT3pHqcuZkHf1Y8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-540-Z3fHtRVqMKedNDMAsr2V5Q-1; Thu, 09 Mar 2023 10:37:00 -0500
X-MC-Unique: Z3fHtRVqMKedNDMAsr2V5Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9B321C17421;
	Thu,  9 Mar 2023 15:36:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 31E18440DE;
	Thu,  9 Mar 2023 15:36:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AB8C919466DF;
	Thu,  9 Mar 2023 15:36:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 9 Mar 2023 15:36:41 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Braille Blaster
To: blinux-list@redhat.com
References: <mailman.2073.1678369157.1521166.blinux-list@redhat.com>
In-Reply-To: <mailman.2073.1678369157.1521166.blinux-list@redhat.com>
Message-ID: <mailman.1902.1678376208.1521159.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

This depends on if the zip is a binary or not. If it's a binary, you 
might get away with running the binary in the extracted folder. If it's 
the source though, commonly there's a readme.md file that'll tell you 
how to compile and install it.

On 09/03/2023 13:39, Linux for blind general discussion wrote:
> When running Ubuntu, I used BrailleBlaster, downloading the debian package.
> How may this program be used with Fedora?
> May it be used by Arch?
> There is a debian download.
> There is also a zipped file of BrailleBlaster.
> I am not sure how to use that.
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

