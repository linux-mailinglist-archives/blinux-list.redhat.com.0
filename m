Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1CF4BA7D4
	for <lists+blinux-list@lfdr.de>; Thu, 17 Feb 2022 19:12:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645121519;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pUa2i3lwgO60mjbjvr+6UgBNINtCYCBHQRlZanG14k0=;
	b=Im2vP4xd3wutwk1hgV4F8m0l4++PihMOXMN0VWnEKbTCPz9vHtu0YYyx6CvbFELDLPNcso
	OwTuAZg12TIU3JmJwe3waLYh3dmOZurPHoKPYRiOZwQ6QdNKXewe1i3yTFEc36cBRpwZrP
	ROi4eVp25/44bVteFEKpWd61OtRIhpI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-IUpedetWM4egHlMfLh7YzA-1; Thu, 17 Feb 2022 13:11:55 -0500
X-MC-Unique: IUpedetWM4egHlMfLh7YzA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A2482F4C;
	Thu, 17 Feb 2022 18:11:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F37F382768;
	Thu, 17 Feb 2022 18:11:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22D831806D1C;
	Thu, 17 Feb 2022 18:11:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21HIBZ8b028826 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 13:11:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EFFD640FF410; Thu, 17 Feb 2022 18:11:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB95B40FF40D
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 18:11:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CDD5B802A5E
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 18:11:34 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-669-9CirY-INM9GUgx4oJo60jQ-1; Thu, 17 Feb 2022 13:11:32 -0500
X-MC-Unique: 9CirY-INM9GUgx4oJo60jQ-1
Received: by mail-wm1-f43.google.com with SMTP id
	az26-20020a05600c601a00b0037c078db59cso4637797wmb.4
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 10:11:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=NN6938JQbAx07kgZ7sceMup5bX+HKhtFGC+jD8ayY9k=;
	b=VYDbFuPRGPiWhS7AWuXerT2PoYODmWeKsa/fd/xJIfbBmsWelOp5duLd00LWfHRMgV
	qqPzBI6llvqqpvK+fbCK/zfttjQ1580FxcCdwwb/9DIyvD6Avui3qK9XgpEe8lHOgFGo
	478iIFHMKi0qSxSqyPR26a5WGvmCAc1uM5rW35rjbgbq7vkScBH1HHptMw4yT6ECJJou
	VMRDsZLetF0T8kc7eEp6+q/wnf7KItxplolV9y/5OpLbKKTYjwdm4yD6UWqUNim4m1tP
	MffEy6fcVPm/DUXj+plRwlGc5YYHEUSi86aFg7bDYSLqAvlxgFLWGd9rvTRGKr1E7QoX
	hprQ==
X-Gm-Message-State: AOAM53366x1Jx4F2sHS09mh2g2AOkwF5cQRYum6+zQxW9Dtqlob9ukMl
	MBLkrohyD2bW7/FgFePwTNRAUTtVekQ=
X-Google-Smtp-Source: ABdhPJxwHXyZ2TDE0Umc1jmdHUwn6SmdT+DNhJNf3yrn5B5avBSJw/0YGXoqo5aSzACqOucLs9QjsQ==
X-Received: by 2002:a7b:cc94:0:b0:37b:dfc0:3bfa with SMTP id
	p20-20020a7bcc94000000b0037bdfc03bfamr3679805wma.189.1645121490994;
	Thu, 17 Feb 2022 10:11:30 -0800 (PST)
Received: from smtpclient.apple ([197.184.180.63])
	by smtp.gmail.com with ESMTPSA id
	x10sm2255078wre.110.2022.02.17.10.11.06 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Feb 2022 10:11:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: Accessibility of installing Distros?
Date: Thu, 17 Feb 2022 20:11:01 +0200
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
Message-Id: <9232394C-10EC-4430-9C95-DB8801ED88C9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Trisquel connected to my WiFi just fine, which is why I'm wondering what Debian's issue might be. The same is true for Fedora.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 17 Feb 2022, at 17:14, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Trisquel will install, whether you have the free wifi or not, in the latter case, it just won't work, but your ethernet will.  Yep; Arch and Jentoo are the tough ones.
> 
> 
> Cheers,
> 
> 
> Dave
> 
> 
> 
> On 2/17/22 04:36, Linux for blind general discussion wrote:
>> Also, as I said, Trisquel also installed on this system without complaining at all.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

