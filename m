Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB43E7B9C6C
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 12:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696500727;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=alQbw0fOCNfWy7qLtvwiQW0MuAFylVOcfVYwTSYjQqU=;
	b=PNIk4RgzAX2Y4BM12MZaIj2iQ9OuiEcH3y0pRa6zAovlQxU7d2C0IOH3YkLmCQirlT/bsj
	U152+QJEdazpAQGRNxb4Q8Q8q8sLU5P2We4JLFwxZ7GlplThECakb5T93IcU7yCBi8BbFY
	OmemM5Wfb1Y5PdGtplCn+4qwkKYJpX4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-567-TulQtrQoOWuhQDoYefrPXQ-1; Thu, 05 Oct 2023 06:12:05 -0400
X-MC-Unique: TulQtrQoOWuhQDoYefrPXQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51B92101A590;
	Thu,  5 Oct 2023 10:12:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7E4C6215670B;
	Thu,  5 Oct 2023 10:12:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1010719465B1;
	Thu,  5 Oct 2023 10:12:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Oct 2023 12:08:42 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Detox or other similar tools
In-Reply-To: <mailman.1441.1696499706.2981441.blinux-list@redhat.com>
References: <mailman.1441.1696499706.2981441.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1450.1696500721.2981444.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You could use rename with a regexp.
e.g.
rename s'/blablabla//'g *_bla*txt
will remove blablabla from all *_bla*txt files.
Willem


On Thu, 5 Oct 2023, Linux for blind general discussion wrote:

> I want to strip a directory of file names of certain characters, like these.
> : ? ?
>
> Detox will do that, but it removes spaces, commas and a bunch of other stuff. I just want to have a list of characters removed, not all punctuation. Is there a tool that will do this for me?
> Thanks.
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

