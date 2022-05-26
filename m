Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D525534EB2
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 14:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653566424;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tXzDPn72+7bQoeuG/EK/ca0LGoJdjEZpHnNeCg/DFgM=;
	b=Xoryk8diCezB9fsSz6JbbPIJIzk79J0uVLXBbrNAZRHhHnV4uQqkUFED+ZLXtznkJOMEVW
	NRCsGOY61VpyA3cnkAL2G5qd9eUU43zfz1GR9XxKyKUinD2LK+SAgGmIbfifn31Z1m4BOg
	UWcZb19gLFNtxCfz9YhyXRvTME2StRs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-64-bPaK5C5AOhy4SX--4lXdpA-1; Thu, 26 May 2022 08:00:20 -0400
X-MC-Unique: bPaK5C5AOhy4SX--4lXdpA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBE751C05AA4;
	Thu, 26 May 2022 12:00:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 805C340C1240;
	Thu, 26 May 2022 12:00:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 22EC9193212C;
	Thu, 26 May 2022 12:00:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 May 2022 14:00:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: Google gmail cutting off alpine
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.18712.1653517340.111206.blinux-list@redhat.com>
 <mailman.18356.1653566048.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.18356.1653566048.111210.blinux-list@redhat.com>
Message-ID: <mailman.18671.1653566417.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I really, really hope the Alpine developers can find a fix for this.


I am rather partial to living on a console for as much as I can, but 
with Gmail and Alpine breaking, it would be rather difficult, unless I 
would want to find an alternative solution, which I am not, simply 
because I have quite a few mailing lists subscribe to the gmail, and I'm 
lazy..


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint laptop

On 2022/05/26 13:53, Linux for blind general discussion wrote:
> unsure if thunderbird can do it via oauth also.
>
>
> Yes. I've been able to use Thunderbird in that way with Gmail for some 
> time. It redirects to Google and asks me to allow the application 
> instead of getting a username and password. This of course is specific 
> to Thunderbird though, and I can't remember if Seamonkey works the 
> same way. That said, I do seem to recall Evolution redirecting to 
> Google in much the same way, so it may still work also. Doesn't solve 
> the text-based client issues, but if Alpine in fact has figured out a 
> fix, that would in fact solve the problem there.
>
> ~Kyle
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

