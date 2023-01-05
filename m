Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0F065E4EA
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 05:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672894652;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xl2F0xZ+fStqAPxYXx6vun6bTQrmcivd9zETvBlu+YM=;
	b=h8CmRvzqRwjOC3BqzVm9LaKdldBRrrDa+QuiVWixoaf5YIe2IuwD87kmjEOkzyjAWidiL5
	vbQQ803AvhCTIJU/TpaRL3MDz86JWefDrmkF6Bq1clHZIxvcDJmASUH2vMzoH8UL6QA3qn
	Y9a3PYHBKOrjQLUxXqC+wYONT/TN/R8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-335-wn1GuYEXMMiGi-iQfLMO-g-1; Wed, 04 Jan 2023 23:57:28 -0500
X-MC-Unique: wn1GuYEXMMiGi-iQfLMO-g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6B0F38041D3;
	Thu,  5 Jan 2023 04:57:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E882F2026D4B;
	Thu,  5 Jan 2023 04:57:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 905771946594;
	Thu,  5 Jan 2023 04:57:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Java & Orca
In-Reply-To: <mailman.2839.1672867371.2515671.blinux-list@redhat.com>
Date: Wed, 4 Jan 2023 20:57:11 -0800
References: <mailman.2948.1672861418.2515658.blinux-list@redhat.com>
 <mailman.2827.1672864702.2515671.blinux-list@redhat.com>
 <mailman.3059.1672865639.2515682.blinux-list@redhat.com>
 <mailman.2900.1672867046.2515669.blinux-list@redhat.com>
 <mailman.2839.1672867371.2515671.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.3026.1672894645.2515672.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jan 4, 2023, at 13:22, Jackie McBride wrote:
> 
> It'll need some sort of windowing environment--x11 is likely the best.
> It's not a web app.

Is there some reason that a web app wouldn't work for your use case?  A great deal of work has been done on HTML and most major web browsers in order to make them play nicely with screen readers.  You can take advantage of this from almost any language, including Java. 

Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

