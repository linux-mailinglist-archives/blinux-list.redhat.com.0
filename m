Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 824444CD938
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 17:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646412018;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=raoO5ZNOYRpkjplohnbdvk7+5HIvelpVGMdCMBVqNlY=;
	b=D1SVW5DwPaAUCVpWyj6hzJAQzxSrMQchHKymnrJDbVldx/HYC1VBKam3zNgDQiTi/W0U4V
	xjngrvQhscc6hdKSfY+9eUCtNKSSCiQYnk0zsKgidFah2cq22xKC0ROfGvxZXOspzmPngg
	rOtvpjc1jm0fdzgm5nyrBTGazUb6wag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-185-myCEZRZ5O8ejQx_uJUKnWQ-1; Fri, 04 Mar 2022 11:40:15 -0500
X-MC-Unique: myCEZRZ5O8ejQx_uJUKnWQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11E7B824FA8;
	Fri,  4 Mar 2022 16:40:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66D0386C34;
	Fri,  4 Mar 2022 16:40:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C11ED1809C98;
	Fri,  4 Mar 2022 16:39:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224GdndP019771 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 11:39:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D76384292D4; Fri,  4 Mar 2022 16:39:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3D3F4292CF
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 16:39:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAAE63811F29
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 16:39:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-77-cCun-f9_O_WiUXIqUxKTNg-1; Fri, 04 Mar 2022 11:39:48 -0500
X-MC-Unique: cCun-f9_O_WiUXIqUxKTNg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K9D8z4ZclzMBv
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 11:39:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K9D8z4R6szcbc; Fri,  4 Mar 2022 11:39:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K9D8z4LqlzcbC
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 11:39:47 -0500 (EST)
Date: Fri, 4 Mar 2022 11:39:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google is nuking simple username/password sign ins?
In-Reply-To: <CAO2sX32BG08sJ6APST4f8d_+EAziSSAcgsqgEeAxS8U74zxwFA@mail.gmail.com>
Message-ID: <8a5873b4-106f-9764-183b-bd78ec833e1b@panix.com>
References: <YiHciAX/R+L65BU3@waffles>
	<alpine.DEB.2.11.2203041342400.3038@debian.work>
	<CAO2sX32idanJBXoveeR9sBU_DnB4QhTT6iSaQ0p9=LM4L=5rZA@mail.gmail.com>
	<625cc4f2-ab55-d987-bc85-842ea1aa1cbd@free2.ml>
	<CAO2sX32BG08sJ6APST4f8d_+EAziSSAcgsqgEeAxS8U74zxwFA@mail.gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Not only that, this is a complex process and questionable how long the
instructions to set it up will even work.  Probably the best way to handle
this process is simply to refuse.  That is, arrange to have all future
email to your gmail account forwarded to an address external to google and
clean out your gmail account on google.  If google decides to shut the
forwarding email service off, I think I'll cancel my google account.


On Fri, 4 Mar 2022, Linux for blind general discussion wrote:

> It sounds like I'm going to eventually be screwed if I want to check
> my e-mail on a shared computer and don't have my phone on me... I'm
> not sure which I find more annoying, websites introducing extra
> security that seems more likely to lock me out of my own accounts than
> stop someone from hacking me or companies assuming everyone is joined
> at the hip to their phone and that they have a smartphone.
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

