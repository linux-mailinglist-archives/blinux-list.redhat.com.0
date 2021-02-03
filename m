Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1239330E595
	for <lists+blinux-list@lfdr.de>; Wed,  3 Feb 2021 23:06:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612389977;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xz4rAkdzDhJnIiO9IvzS4VsfOQnPpelwifWxR3La8F4=;
	b=Eqnsu/wuF5u4/ZcqNk+UQ/HwbRN/YJ4CP7QR2ivMkfhEs5ez+L862xhxJNP+8bQWt/Zib4
	ds4KPOKiewe+bHNieWp0xrDZ2SnQX1nB/obQHe6TEx0Ofy2cjmiXRFyvWME3vOYH/ffoXX
	MprxkJcKFic9Wg7YPFRIiE6iiz/CLcw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-fLCainRuMOK-CmHjGf0oLA-1; Wed, 03 Feb 2021 17:06:15 -0500
X-MC-Unique: fLCainRuMOK-CmHjGf0oLA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14EED100CCC1;
	Wed,  3 Feb 2021 22:06:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBE815B4AE;
	Wed,  3 Feb 2021 22:06:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5BF3218095CB;
	Wed,  3 Feb 2021 22:06:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 113M68Kf023383 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Feb 2021 17:06:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4B8A42026D11; Wed,  3 Feb 2021 22:06:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46BF52026D49
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 22:06:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7E29101A54E
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 22:06:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-531-IpX2ap5hP0uBbKzaeT8zww-1; Wed, 03 Feb 2021 17:06:04 -0500
X-MC-Unique: IpX2ap5hP0uBbKzaeT8zww-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DWG3H0x9Xz1vRk
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 17:06:03 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DWG3H2jKDzcbc; Wed,  3 Feb 2021 17:06:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DWG3H2RNTzcbV
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 17:06:03 -0500 (EST)
Date: Wed, 3 Feb 2021 17:06:03 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: latest download of jenux iso?
In-Reply-To: <d93d7848-cda6-0424-436a-526208378bfc@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2102031703510.3544@panix1.panix.com>
References: <d93d7848-cda6-0424-436a-526208378bfc@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I wrote a couple scripts one of which when it works will give you the 
current jenux download url and the other script when it works will 
download the iso and the sha512 file and check the integrity of the iso it 
downloaded.
These might be better written with expect but I need to learn expect 
first.



On Mon, 1 Feb 2021, Linux for blind general discussion wrote:

> can I get the url to the latest iso of jenux?
>
> the iso on the homepage gives me a object not found
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

