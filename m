Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F04F969248F
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 18:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676050668;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IL9seUqJy4YcqAPPH4aIU+uVPOCns/IR15N+pP2XUYQ=;
	b=AKA0pQ5fBXeuLPOU9sc4dP1S5RTwG5W/hJ8SmKzRCFw2kW7CMo4LlSBU4Id1FeYyCUKtut
	AJ0gijbXInPs47HXccix3pNYHw5K2x+5iW5DSfdWl1W3S6FLLexjLUDBkYg4WHrQ3mL+FP
	e9z7SB6j4z/hir26qt3/ngoSPGlkpbE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-64-tBVFVCpwOp2rxC2rOkeG3A-1; Fri, 10 Feb 2023 12:37:45 -0500
X-MC-Unique: tBVFVCpwOp2rxC2rOkeG3A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3DDE9971082;
	Fri, 10 Feb 2023 17:37:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E950F140EBF4;
	Fri, 10 Feb 2023 17:37:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 95BB719465A2;
	Fri, 10 Feb 2023 17:37:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Feb 2023 17:37:27 +0000
To: blinux-list@redhat.com
Subject: Re: routing audio from one application to another
User-Agent: K-9 Mail for Android
In-Reply-To: <mailman.5786.1676050303.8170.blinux-list@redhat.com>
References: <mailman.5778.1676049656.8169.blinux-list@redhat.com>
 <mailman.5786.1676050303.8170.blinux-list@redhat.com>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.5772.1676050651.8172.blinux-list@redhat.com>
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

Hi,

Thanks for this I'll check it out.

Honestly, I'm more comfortable in a terminal than a graphical environment, especially when it involves something like modifying sound, because at least I know things won't happen unless I press enter, and there's always braille if I break it!

Thanks again,

Aaron

On 10 February 2023 17:31:34 GMT, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>I don't remember what I did, but pw-link is exactly what you need. For now, I think you will need to set it up from inside of a terminal shell, since there's really not many graphical applications that work directly with Pipewire. Still, check out pw-link, as well as various articles that can help you get exactly the setup you need.
>
>
>I also remember helping someone get OBS Studio set up, which may be able to stream one application into another without the terminal. Hope this helps.
>
>~Kyle
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

