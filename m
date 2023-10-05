Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E95F67B9C83
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 12:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696501857;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QisykTjIKBslvrL7zgdI/d9d5SlYRyDsZrU5p2McRLA=;
	b=c4LGXyrOeoDEa06wXjP2uSdpGTBDhltNV0uA+mP0s3nWkXUrdAMo+R5ka5STvQHruJQmOp
	4USq/yf73JYCJFh2OlALRi3GvQGuEiuW/2QFMopLcobdYKW8q0x/VDrj/nO2z/rFYF99II
	EEgmHz0gimzAgiGbtPGpIaAQiaz+N28=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-PyJ-OgdcOJSVCmcj2VxSiQ-1; Thu, 05 Oct 2023 06:30:54 -0400
X-MC-Unique: PyJ-OgdcOJSVCmcj2VxSiQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD44429AA2D4;
	Thu,  5 Oct 2023 10:30:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B541C140EBB7;
	Thu,  5 Oct 2023 10:30:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2040919465B1;
	Thu,  5 Oct 2023 10:30:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Detox or other similar tools
Date: Thu, 05 Oct 2023 05:31:23 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.1450.1696500721.2981444.blinux-list@redhat.com>
References: <mailman.1441.1696499706.2981441.blinux-list@redhat.com>
 <mailman.1450.1696500721.2981444.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:I18/pVK6fSE=;rwgvbJ2CAY230HrMOAoWARGisxI
 rWvEXs/p14RM3cyNFfXHa0JILKapF54fASkAP9BeTGiZOWVkfstNq0NVuMYYACCIQ7GAs3BBc
 8GulYMRcvnBcyFqjudODn5t0iA3VbVARINFJLnNcaHdmhzGEMFaUYQ5OrYmXcy2gJPWwT8qvY
 5aeBKgIYCgKL37t4BXwV+arPVdMQXgaQQaY3GjE3QcR4DcweXwIYsvoJUvqBFfsO1/mC7GgGu
 2MU/Taoi3RMurjLgnGYNRdNZU7c7ESc+x9u8YFhsqaJIEAW6KMhWaie6zQHu/iPt+HIrCyRgh
 fhUelybDLM85UZXL5VunIZu1nhmTZZwTjjXOMHp6VnSZrL5wP4y1yq787F3OKGyTg7x4c2Xf8
 Qda7W+0aiIpV2zaTLTj7yJBEMD61ST7QvYIHdB1B03dkLD494/r5Lesxalln4swivJGUQTxds
 LftN9X6xZGswoZFDyIoaU23Filf8AP5kZELHjB/zRTrjANbPWcTSmvTtc1bhZun2qy6M+L6T3
 bEkJHiYWuPHEOp1K2Z11eGKEyTVVaw4CsVZ6pRg7EaDLF1ujOl20siMEIdm8Uz0A+yt3Nb34J
 e4LAe5mAseTgk3mGGKHpv1BoT5uQfLXbxw3PJC8Bm4aZpfJ7tUK9hGoVepYw/CrvqQpe68m24
 LV/bctI9s6pmAC7XPYhow82X5JujMZRfl31Aqwl0A5qBblzISPnDqA2/SYZwDLB6oL5kA0IZV
 esQ9mcp0YQClSGl5dovCC9BAQvnrF0SaYN5BHu1qWC+/iEwngf/YLePAMHTCvsGpcEiXL1DNA
 p9ENUGKb76NO27KY+IIKjrvKnX2HOTAkFPMimNV/y8pb2aYyGavp28IN6u+Y6WtANLc2I2Xu1
 DVBppJF0OJL9Onu3/giH7eSBYBbr0eEPcDq0kSQlgUKZalnESDYzlfURMpFm3DnY4VT39gR53
 aTuWW9VKFlnu2EH8CNbp9yIWTQU=
Message-ID: <mailman.1449.1696501850.2981450.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Oh thanks. That should work.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Thu, 5 Oct 2023 12:08:42 +0200 (SAST)
Subject: Re: Detox or other similar tools

> You could use rename with a regexp.
> e.g.
> rename s'/blablabla//'g *_bla*txt
> will remove blablabla from all *_bla*txt files.
> Willem
>
>
> On Thu, 5 Oct 2023, Linux for blind general discussion wrote:
>
> > I want to strip a directory of file names of certain characters, like these.
> > : ? ?
> >
> > Detox will do that, but it removes spaces, commas and a bunch of other stuff. I just want to have a list of characters removed, not all punctuation. Is there a tool that will do this for me?
> > Thanks.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

