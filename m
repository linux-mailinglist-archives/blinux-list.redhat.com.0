Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B7569F7A1
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 16:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677079381;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PUS1gAmkN0nsyJgQknnr/P+TQRJyTeKMF6Eb6OxeUaI=;
	b=NF2yjZZi2sTAJYSaDg7Kl7UfoJSZLFPbmJoe/vw4fU16EGvhG2XMhDUt8SbnIW3PeGuqCc
	grMxB4dWvxG56VapyVUV6N1u6m/Y8zxAXq2zZEQbq9KoEX7nLA0V+dIuSO3izD2ZQK1y0/
	Km/wuuy676uS9LtYWtA9NY6F4gDpAHk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-66-KDzK4aEpP3SwQq7YTI37RA-1; Wed, 22 Feb 2023 10:22:55 -0500
X-MC-Unique: KDzK4aEpP3SwQq7YTI37RA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B05F680352D;
	Wed, 22 Feb 2023 15:22:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D9FC11121318;
	Wed, 22 Feb 2023 15:22:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 660D319465A8;
	Wed, 22 Feb 2023 15:22:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 09:57:40 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
 Linux. (fwd)
In-Reply-To: <mailman.988.1677043847.686540.blinux-list@redhat.com>
References: <mailman.887.1677042909.686535.blinux-list@redhat.com>
 <mailman.988.1677043847.686540.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1140.1677079370.686543.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Gee thanks professor!
My understanding is, in fact thanks for reminding me to follow up, efforts 
are  being made to get said proper permission.
Now that you are on the list, perhaps raising the question will bring an 
update?
Kare



On Wed, 22 Feb 2023, Linux for blind general discussion wrote:

> Yeah I saw your response to this question, and you're spot on. You can't just 
> slap a GPL on something and make it stick. The original developer releasing 
> the source code is definitely good, but as far as I know, unless he got the 
> blessing of Fonix Corporation, which is technically the copyright holder, 
> neither he nor anyone else can change the license. Worse, if Fonix 
> Corporation sends a DMCA letter to Microsoft, they will remove it from Github 
> without a second thought. They of course can't delete everyone's clones, but 
> they can delete the repository and all its forks. So I do hope that this 
> legal hurdle can be cleared. If so, we have one more free and somewhat decent 
> speech synthesizer to use for work and play.
>
> ~ Kyle
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

