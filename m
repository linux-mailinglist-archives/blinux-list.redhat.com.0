Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7B2460090
	for <lists+blinux-list@lfdr.de>; Sat, 27 Nov 2021 18:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638034648;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vQtG0aEeslJV/JdsOPBVgYiOnKkmexbY3dJG7jAqiQk=;
	b=BgSym3tFwtkdl7iVbrejrxAfSP2u5Sl6zm4Nrbp/NoQYW7lmrU5vcjI0CYpOW+IYftaOut
	NmHYrTohGR+4I5XNL708x3022Cog2qCd35Oi7mqDG5bkJIR2y81y/zIC5v4c9VnVkj0eAJ
	j/J8PXm1UEOhpF467V7GAmM5AzEoPc4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-207-oXq4G189OmaZoUdjp2J78g-1; Sat, 27 Nov 2021 12:37:24 -0500
X-MC-Unique: oXq4G189OmaZoUdjp2J78g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CBC651006AA0;
	Sat, 27 Nov 2021 17:37:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 261DE5D9C0;
	Sat, 27 Nov 2021 17:37:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36D061809C89;
	Sat, 27 Nov 2021 17:37:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ARHbCYv012520 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 12:37:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4A5D4401E50; Sat, 27 Nov 2021 17:37:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45F47401E4F
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 17:37:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B9F1811E76
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 17:37:12 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-2-nHUR054LONeQfMCV0WaCHQ-1; Sat, 27 Nov 2021 12:37:09 -0500
X-MC-Unique: nHUR054LONeQfMCV0WaCHQ-1
Received: by mail-lj1-f178.google.com with SMTP id j18so12149203ljc.12
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 09:37:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=BtRgxfDVl9mbbQZhyLDmWJQFl5Zuw+Hve/r2MbRTyBE=;
	b=Gg3syZ8UkF7wZa8LStR8KxHfl+KOfUHq4Gh8JBz0i1JXYbiAQsuyRbyNDLXP76nYSC
	yi4kCVw3+FIUNhVi8s+0LshgpbvkAcb7TqK6I20DRDtm5X5p0EbiDyKH75WrcU+xpKc3
	b4OWruXNvDSKymh52unqHEHsu5nzBctRaTzNspxyY6YctfY+Ip572OKIUOqQ6mXKSZnk
	P0gRXITWQGQPNj7AfY0Sty5qaFAIzg5OCiuqRNGtVN95QJ1EodUFQiGxIWismwOtgAbR
	+CGdOfzyMFCBrQMonM0vep92PoiU+MgRTD4SJAA1aC70ohcLKYxnX2STE0FplJGU7Gc6
	/vIQ==
X-Gm-Message-State: AOAM5331PcJXTKjvFCG1oaGAO38U6yFw3uX7xtWTEZNukHlKo+Iw2ss7
	qfB+emnwge86q2+h9Byd+n8GquUNiCo=
X-Google-Smtp-Source: ABdhPJxEKSuOddWnjdERVe5rgUc6RR3yXwBrJSuliDIS7tSLeBz3AQMSFvSWXtULgDgT5NIOLp08ow==
X-Received: by 2002:a2e:904b:: with SMTP id n11mr37891566ljg.120.1638034627589;
	Sat, 27 Nov 2021 09:37:07 -0800 (PST)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id v19sm861073ljg.8.2021.11.27.09.37.06
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 27 Nov 2021 09:37:07 -0800 (PST)
Date: Sat, 27 Nov 2021 20:37:05 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: looking for two gui accessible applications
Message-ID: <20211127173705.fcq6hh2qbozygm42@alex-pc>
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
MIME-Version: 1.0
In-Reply-To: <8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Nov 27, 2021 at 12:25:31PM -0500, Linux for blind general discussion wrote:
> What I hate the most about terminal apps and command lines is having to remember so many options and parameters with dashes and slashes and commas and such.

just use tab completion no need to remember.

> Cheers,
> Ibrahim

-- 
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

