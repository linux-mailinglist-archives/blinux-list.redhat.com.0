Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 665213EBA38
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 18:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628872989;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=40/Q/HA7HP3cOIE7WShoiiqRnacEXmtFd1e0VJDp65M=;
	b=GkTwMZcw8zupx6fkT74r6qzQBFcZ0pzYbWA6HS6/cnlijgcTjSouHzA2EPF9k5gXTAW8TT
	i7zhrF4sEi6/MXQug4UxdpXHEHIamJ7JXDaGe6gF6kheBmPQcPzr5wMnjlsaFcWxt2VLBT
	KemcxV7ADz3Fd5Qiby/x75n5MRG7X3M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-q1nF12XkMHew8njFGrLJ6Q-1; Fri, 13 Aug 2021 12:43:07 -0400
X-MC-Unique: q1nF12XkMHew8njFGrLJ6Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7D1718C8C1C;
	Fri, 13 Aug 2021 16:43:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A00F69280;
	Fri, 13 Aug 2021 16:43:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 154A14BB7C;
	Fri, 13 Aug 2021 16:43:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17DGdF9E015342 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 12:39:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6FC0310547CE; Fri, 13 Aug 2021 16:39:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6809E111C4AB
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 16:39:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9B53188144F
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 16:39:11 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-453-oAJipI44M4GjoD-5qOHgaw-1; Fri, 13 Aug 2021 12:39:09 -0400
X-MC-Unique: oAJipI44M4GjoD-5qOHgaw-1
Received: by mail-ed1-f46.google.com with SMTP id n12so16262311edx.8
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 09:39:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2cBhmqf02YmhfviMpB+5wLNBmQOlCuMtRYf18qJQ0hM=;
	b=X5Z7W8DSiiiyvbZ3qAxSotHXvZqmPiGSCk8MeHiZJoFRR4TB1mML/Z3bbfaOKcn4rg
	udI8PQM3aWOKDtVq7G5Y24b7RuYYrGQsqUNqozXy2QOqnTDr38FV30ErP5oM23jOUj3k
	fodpsYMzn2kl5jwMbfoOC7cLNDovDhCNQkI7OBv2Vs5ZpJg3KZznbKlevqwI9lZLXdlp
	VlaDdmWvj408EtwF1Z4TX+Ekbba0MrZI3maecNw+bjNvLaMXi0gM7tXEm5hnNI1p6YWf
	ed4Cf47/lGMWUVraCxa149904pNLfciAs7+a3K+8asrkYuzz/eh2MDVxEuInVKU5NNb0
	EE0Q==
X-Gm-Message-State: AOAM53029SluVE2Hrh081gjVukl8z93jGYqsGWhJrmmOiXHJ7TMdifiY
	DVlTF/GbbeXKtcPflaQvLUgvDaHASrU=
X-Google-Smtp-Source: ABdhPJyIzsMcb/xOdN+JNm9mcIMKm8+aFPyeVN2GZSJ/R9gnHSFeDt5psv7r50uoValpDhdkm+kJPw==
X-Received: by 2002:aa7:c042:: with SMTP id k2mr4325813edo.104.1628872748462; 
	Fri, 13 Aug 2021 09:39:08 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	r16sm1150147edp.61.2021.08.13.09.39.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 13 Aug 2021 09:39:08 -0700 (PDT)
Date: Fri, 13 Aug 2021 19:39:07 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Changing Keyboard layout in Gnome
Message-ID: <20210813163907.wdlet72ewhmutadf@alex-pc>
References: <a551801c-079e-9515-0e20-ed4e552bbb96@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a551801c-079e-9515-0e20-ed4e552bbb96@gmail.com>
User-Agent: NeoMutt/20210205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Aug 13, 2021 at 03:54:11PM +0000, Linux for blind general discussion wrote:
> Hi all,
>
>
> I tried to install vanilla arch again, and was successful, but for some
> reason Mate didn't want to install. I am now making do with Gnome, not my
> favourite desktop, but anyway.

can you tell me how you tried to install mate. and what the error was?

> I am one-handed, and have taught myself Left-Handed Dvorak. I need to change
> the layout in Gnome, otherwise I am as slow as can be. If anyone knows how
> to do this either in the GUI using orca, or even better, which config file I
> can go edit to do this, I would be really grateful.

hello Brandt. you can change keyboard layout with localectl[1] command.

[1]: https://man.archlinux.org/man/localectl.1

>
> Warm regards from a cold Johannesburg,
>
> Brandt Steenkamp
>
> Sent from my Arch powered ice heater!

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

