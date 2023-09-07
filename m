Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 714D679730A
	for <lists+blinux-list@lfdr.de>; Thu,  7 Sep 2023 16:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694096593;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0et9Ci1bj/3e0rIDXqYYExX7K9mukFU4yXos+SRdxKA=;
	b=dcQMctDBcMmNgwxUsaq3xvd4Pb+sv3AiNVkkHqHAZO2/bv1NvUPjkVy4Pwrd8a6kmN9aVY
	Zf3OMySat8CQIxOiaIGN8d7uRdBIFs7Oyu91S+Ap2z02ysQ4HfwAP5tB8Zmjovj75UkX0J
	gXvbBAuqkqDzbLs7GO/N51kDtS8GUuA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-Jr6GF6gVM52pyg7DE-dl6g-1; Thu, 07 Sep 2023 10:23:09 -0400
X-MC-Unique: Jr6GF6gVM52pyg7DE-dl6g-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E9EE181EC20;
	Thu,  7 Sep 2023 14:23:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 473ED493112;
	Thu,  7 Sep 2023 14:23:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B6DFB19465A2;
	Thu,  7 Sep 2023 14:23:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 7 Sep 2023 09:16:02 -0500 (CDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: RHVoice on Ubuntu
In-Reply-To: <mailman.1625.1694094913.353787.blinux-list@redhat.com>
References: <mailman.1625.1694094913.353787.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1656.1694096583.353791.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Make sure the rhvoice module is enabled in speech-dispatcher's 
configuration file. I'm not sure what Ubuntu does off-hand, but the 
default upstream configuration file has a line that needs to be 
uncommented to enable the rhvoice module.

-Mike Gorse

On Thu, 7 Sep 2023, Linux for blind general discussion wrote:

> Hello all,
>
> is some way to install RHVoice to Ubuntu Mate 22.04 on Raspberry Pi? I would 
> like to use it and if my friend tested it, he had problems to see voices in 
> Orca. It was installed, but invisible.
>
> thanks a lot.
>
> Best regards
>
> Vojta.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

