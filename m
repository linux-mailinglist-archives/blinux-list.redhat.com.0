Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 63EE020A661
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 22:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593115858;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yFYfM/RWRJRMxWS896nmTWwDpqX6jftdysOI2/4B9aM=;
	b=RJdp3HzUP+Mb7FDYcmFKP+lMeEb77scMVooF042mO8olwDbZrDjswKH9bRglWiZ55YoRVG
	TJToB/J6yVnItNqsbqqgvNXfGeBI/oAmdBIglAFKFzvM/oVXDToE6Toi33ODawJ/FhrQyd
	RaVKSVw7/OgUiCwQF3SawBUHwu8scEw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-64umrv_lMMuMV5WmTcI_4Q-1; Thu, 25 Jun 2020 16:10:56 -0400
X-MC-Unique: 64umrv_lMMuMV5WmTcI_4Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A4024A0BE2;
	Thu, 25 Jun 2020 20:10:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86DA210016DA;
	Thu, 25 Jun 2020 20:10:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5511D1809547;
	Thu, 25 Jun 2020 20:10:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PKAm0Y010914 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 16:10:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 902C6202B173; Thu, 25 Jun 2020 20:10:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C3F8202B184
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 20:10:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 33322800143
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 20:10:46 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
	[209.85.216.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-233-85S84hScNkiMOIuzFQ436w-1; Thu, 25 Jun 2020 16:10:43 -0400
X-MC-Unique: 85S84hScNkiMOIuzFQ436w-1
Received: by mail-pj1-f50.google.com with SMTP id b92so3832810pjc.4
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 13:10:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:in-reply-to
	:message-id:references:user-agent:mime-version;
	bh=fCRl1gpMXwdbvOL1U1ol6H34jZWn4DmcUOCAa+SFBTw=;
	b=FGnTg8z0L8BhT2q9Q5zaCse4D4njfE0mzjTORhek8JRlqdEABCm0ODaUpkGeQ9W/kv
	3SfmRtUbJ9B1A/mlGmajFjbunaqYBNl9+lHEQBMU37yFQLMwTFEuvJ0n5OKR2GErtGE3
	KGTSyVK9I5MWe4rONtFmTINKFOqwm4jeiH7otdJtEg3pR0dWlXUPm9U03Q/mWRAjswXs
	a9PwlLGkj8/rGlgDuHDgpFvbIt8kILLi00PSZdrupWcloZeeobPtMT1cNnssHwMe+eOH
	mpCo0uGeDyPL28bVTKui/LEF5LAyFAc6aNYFpvWvL2TR5SuaAOx2FT9kwjRXfWjkRmCe
	GU3g==
X-Gm-Message-State: AOAM533+p1X3qkBZ3Wl0lXVUxVH526+ELDYtNrBfsX/fxOK1FttvCGi4
	2kc9dF1WG7SrfBpfpKFv1p7Z387n
X-Google-Smtp-Source: ABdhPJw8UOLzw8pfZqGgCqx91syWF8eFsYyckoJwphXB/mCUOZG58AM87kgW8yvrzJ9KPccLL9rSVw==
X-Received: by 2002:a17:902:b58f:: with SMTP id
	a15mr35040838pls.106.1593115839178; 
	Thu, 25 Jun 2020 13:10:39 -0700 (PDT)
Received: from tom-M2800 (207-118-108-232.dyn.centurytel.net.
	[207.118.108.232]) by smtp.gmail.com with ESMTPSA id
	f6sm25820991pfe.174.2020.06.25.13.10.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 25 Jun 2020 13:10:38 -0700 (PDT)
Date: Thu, 25 Jun 2020 13:10:37 -0700 (PDT)
X-X-Sender: tom@tom-M2800
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: problems with apache2 /var/www/html
In-Reply-To: <CADj8JxdZpDra8wxg9UcjDjsG3CtcG0A7EWTRt6Pg6C4LU0bLvw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2006251309490.13727@tom-M2800>
References: <CADj8JxdZpDra8wxg9UcjDjsG3CtcG0A7EWTRt6Pg6C4LU0bLvw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

What are you getting for an error?  How are you trying to do the upload?

Tom

On Thu, 25 Jun 2020, Linux for blind general discussion wrote:

> So my web server is running apache2 php and mariadb but I can't upload
> anything to the directory. www-data is the owner and it is a system
> account. /var/www/html is my root directory. Is there something I'm
> doing wrong?
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

