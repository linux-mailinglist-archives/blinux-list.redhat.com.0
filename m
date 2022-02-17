Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D31544B9C23
	for <lists+blinux-list@lfdr.de>; Thu, 17 Feb 2022 10:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645090661;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+tu3Sx8fw8Jm0yJXDaayrgEesAgzxG0Hfn8/eZP9dCQ=;
	b=KdQ+Jrf195jqKRbnprCr36HXPvAcaXr96BpXfEicy2yXYG9YQVraTah1FxEQikN7RcFXp1
	VDonbDFErIYjd/zg8chxjwnMUUjDesATfE4ikFropfemRjpQEHxLPe+uEQ2kVotwi5SfLC
	vKajLnSS3hAnCUJuf9SiiJLlHyo7pc4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-TBO_YsiPPlSPSqtNJd8pog-1; Thu, 17 Feb 2022 04:37:40 -0500
X-MC-Unique: TBO_YsiPPlSPSqtNJd8pog-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E7981800D50;
	Thu, 17 Feb 2022 09:37:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5538478DD0;
	Thu, 17 Feb 2022 09:37:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 432A34BB7B;
	Thu, 17 Feb 2022 09:37:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21H9b8qF016067 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 04:37:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E116115230AF; Thu, 17 Feb 2022 09:37:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCFA815230A7
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 09:37:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE8558011AF
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 09:37:07 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-224-EOvQkwNxP8WY0A8Xf6zkaQ-1; Thu, 17 Feb 2022 04:37:05 -0500
X-MC-Unique: EOvQkwNxP8WY0A8Xf6zkaQ-1
Received: by mail-wr1-f45.google.com with SMTP id d27so7914521wrb.5
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 01:37:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=8TECY7LVGPtAIo7jxa4xPWwqNIqOWc+GubgwRkIFtBY=;
	b=YDsM9aqrVS1NSpOE+kdhHJ9fyegZQylkICZCo0fzFqMoNJsSkduWUJq+IUd2SRbbwR
	eiMbbpgWIKLZqaOz1dkf4+p25/2D5K7sABeuPNXPWh5FP0YHAR8G/nr45qGqlBAn6yEs
	J6EYtDzVtCwug7s/WIaxvDeFW8qL/5O2nTk23EyYTNH+KMOcimFf7SJPQ4i1659oLD9j
	LZCLJSyJG0eXJ+BUaavAtheY00jxihwm2GhHDI50IUyIYBT2jaHouLh4u1VXQMFlL080
	6eORMRllCVh7/oRbaKxTCWgNnctmthGylp+Sv/zJKsjwXFI7uw6s1sEn3MeLLyVRd4BA
	n5Kg==
X-Gm-Message-State: AOAM533YN3MMWmhRaoAi2WIEAAIRwGa326k9clFl7reyLBR29vkchV7s
	vukOFnhLuD6zmyXTOwAabMUwcMUVDcU=
X-Google-Smtp-Source: ABdhPJwW/79vKQ0/YxsWseucg95wYr0vZ/9B/bvr6EZeKBkvRcTq12J1d8NM5fknESmLo095pYUybA==
X-Received: by 2002:adf:ec11:0:b0:1e6:352b:6027 with SMTP id
	x17-20020adfec11000000b001e6352b6027mr1584614wrn.702.1645090623939;
	Thu, 17 Feb 2022 01:37:03 -0800 (PST)
Received: from smtpclient.apple ([197.184.180.63])
	by smtp.gmail.com with ESMTPSA id
	g10sm13868887wri.91.2022.02.17.01.37.02 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Feb 2022 01:37:03 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: Accessibility of installing Distros?
Date: Thu, 17 Feb 2022 11:36:59 +0200
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
Message-Id: <BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I installed Fedora Mate Compiz 35 just fine.

Also, as I said, Trisquel also installed on this system without complaining at all.

I honestly don't know if I have the fortitude to try my hand at a Jentoo install, yet, I can sometimes get Arch to install, but that's still hit and miss.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 16 Feb 2022, at 17:31, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Debian also ships an iso with the nonfree firmware; look for the "unofficial" set.  Not sure  what's so "non-official" about them, since they're packaged by the Debian iso team.
> 
> 
> Devuan's like Debian, but it includes the non-free firmware in its kernel.  It should install just fine.  Devuan is debian without SystemD (the initialization system and services manager found in most modern distros except Slint).  What branch of Fedora did you get, that's free software-only?  the standard release has the non-free kernel blobs for things like the non-free Intel wifi radio.
> 
> 
> Since we're talking about the accessibility of various distros, what of Void and Jentoo?  The installer for Void isn't accessible, but a friend managed to bootstrap it and now he packages for it. I think there are some folk, listening, who may chime in about the accessibility, but steep learning curve, of their favorite, Jentoo. In case it means anything, Jentoo has a "ports tree", like the BSD. Basically, you build most of the system from sources.
> 
> 
> Cheers,
> 
> 
> 
> Dave  H.
> 
> 
> 
> On 2/16/22 04:41, Linux for blind general discussion wrote:
>> Is it, like Debian, only free software, or do they also provide a non-free Iso?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

