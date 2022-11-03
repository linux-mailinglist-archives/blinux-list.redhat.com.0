Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4A0617A15
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 10:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667468324;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zpKxqUkd6eziIgLzRJVt7Us0IvBfZOF8jrEQPx771W4=;
	b=U7cgZ76DRKj49HDcLNqe+4tEEOne3exXUVZQS1lzbPVtaS0/1AwyaycyR6WEHePu7eF0Zy
	P9JL1XpDqYUvUI93gKAJNYIpqulFRS86qfBNrab9d/1kew+pyS2wo4Zs+4Y0/v5teLMtxI
	2mebogkVvoZxuhvtkLB+F7OJusWLMnU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-205-TXIvxv-NP8ui9LLlyELFxg-1; Thu, 03 Nov 2022 05:38:41 -0400
X-MC-Unique: TXIvxv-NP8ui9LLlyELFxg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C6C63C0E20B;
	Thu,  3 Nov 2022 09:38:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AF61D492B06;
	Thu,  3 Nov 2022 09:38:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 251861946A66;
	Thu,  3 Nov 2022 09:38:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 3 Nov 2022 17:38:31 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Javascript for text mode (fwd)
In-Reply-To: <mailman.4292.1667467115.3005.blinux-list@redhat.com>
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.4321.1667468317.3007.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

If author of lynx and links can use dialog to create text mode GUI  then 
they can support javascript. Is it right?

On Thu, 3 Nov 2022, Linux for blind general discussion wrote:

> Date: Thu, 03 Nov 2022 10:13:25 +0100
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Javascript for text mode (fwd)
> 
> Hi list,
>
> Can you describe your problem more preciselly?
> I know that lynx and link don't use any JavaScript engine.
>
> Greetings.
> Artur
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

