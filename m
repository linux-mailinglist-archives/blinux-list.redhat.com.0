Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1ADDE3D24D2
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 15:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626961628;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aeyBDrCiWtOaH52mCJD1ApCzb9DWSYnXYio3CoR2iYA=;
	b=J7lw7P/83lgSMk53SAc6iQG1ZQz90gTQyHypsKcaBR2cm/ot6FItKwTFG+uaANGaiJ02Cj
	ki4Vt2zKMeVqaQG75Nq6bpgHhct5zSCj/TFWjuyWp1nXHObUuPr81A3FTJAzWTuuGRtj/e
	IG8pK/TUDF1RNkNy9uNO5wpk/Ik1+Kg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-rgb5xnySNlK-wwVRHzdKOQ-1; Thu, 22 Jul 2021 09:47:02 -0400
X-MC-Unique: rgb5xnySNlK-wwVRHzdKOQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC08CCF990;
	Thu, 22 Jul 2021 13:46:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFCC47DA51;
	Thu, 22 Jul 2021 13:46:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2DFD4180BAB2;
	Thu, 22 Jul 2021 13:46:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MDkYaf009677 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 09:46:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E6F2110CB272; Thu, 22 Jul 2021 13:46:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2C0810CB269
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:46:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A107866DF5
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:46:31 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-169-jVnLQ0SQPeOlLZivH57dIg-1; Thu, 22 Jul 2021 09:46:29 -0400
X-MC-Unique: jVnLQ0SQPeOlLZivH57dIg-1
Received: by mail-wr1-f43.google.com with SMTP id r11so6003960wro.9
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 06:46:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=pCwUxU7WujjIfk5OFJajfJfB5HjnQ6pk/nbXEdkItco=;
	b=ihUbg+zlKppixYrnOGhk9KgD015PO7clI4JguLmgiz5iWgtz0lYBHJbyK+/7iHO6Nu
	JWUlfXjVAP8AJb7RLaBGqZuXnvxTgDETlaNyLGJS5oRW6/BNVvbDgRPVKH0bxn0V7zty
	wWAf9NdfKxV/H+UGuDxKTjHQE/qQwnm1qk0wQpnSgdgA5rYXFPvK4hF/jyJdDa1kFjMv
	BHxiY+sVTYMQI2xiaKzko8Nj/gApX9RBq/x8huTEWTbQ+ZU6eLUVfsYbXUTU1ZJ3MueC
	aQJe6IoQMeS/nIqb85D5rHdkckBNUNLp3pFRrYpZg/HJRJm4Gl6tAFKzl1DNxFW7yAd7
	AcQw==
X-Gm-Message-State: AOAM532jTwjSYIqrwoouM+I/CPVqmdRCyNqNrV4x6FMMrY4kjSEhuSKb
	qa+HcYlotUZlTX0T3Ak3cRj3C/y55NjzcA==
X-Google-Smtp-Source: ABdhPJxmKqcsK+RLSb6KirTyRW0ntG8jrXusUggFtyD8fDGNlFo9N/PxJ1a6je9vXRRbqdvwH1fa5Q==
X-Received: by 2002:adf:ec86:: with SMTP id z6mr178wrn.320.1626961588024;
	Thu, 22 Jul 2021 06:46:28 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	h9sm24747760wmb.35.2021.07.22.06.46.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Jul 2021 06:46:27 -0700 (PDT)
Date: Thu, 22 Jul 2021 16:46:26 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about running emacspeak on Arch
Message-ID: <20210722134626.jueyx7z7q7a4oska@alex-pc>
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
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

On Thu, Jul 22, 2021 at 12:00:23PM +0000, Linux for blind general discussion wrote:
> Hello everyone,

hello Francisco.
>
> Last night I installed emacspeak on Arch Linux from the aur, version 54.0
> with yay, but I am having a problem: whenever i type
> emacspeak
> in a terminal, it tells me to choose a synthesizer, but i can't choose
> either espeak, or espeak-ng, because no matter what i do, arrows, tab,
> emacspeak doesn't play a sound.

did you use pipewire? unfortunately emacspeak don't work with PW at the moment.

> After I press tab, in fact, an emacs panel opens, and nothing speaks inside
> it except orca.
> Does Anyone have any ideas on how to fix it?
> I'd like to try and get into emacspeak, so to see what it can and can't do.
> Best regards.
> Francisco.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

