Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF064B2BC5
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 18:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644600627;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3XpgVxFcDqUUSM91ft58Z5kafI6sBNPalitwtoCw2BI=;
	b=abnGAzNHXs/B+WXZ2ditEvy6yTeOc1p5eQ2hz9EyoIQ4va06pYGodNCyZF9Vr5z6L9EMfK
	X0XmLenETeSa2RjTDn0bZLFpGxqC75cN28Y2mP13mfW6fUCe6oVc7hMbjECKaL6IeWq0sf
	gil7hHTcS1M4PXwjY2euR0sb95Nn3O4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-504-gX7ko2G8PRCWP5vjMqYduw-1; Fri, 11 Feb 2022 12:30:25 -0500
X-MC-Unique: gX7ko2G8PRCWP5vjMqYduw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2EA681091DA5;
	Fri, 11 Feb 2022 17:30:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF0C1838E9;
	Fri, 11 Feb 2022 17:30:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C24871809CBA;
	Fri, 11 Feb 2022 17:30:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BHSh9K006022 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 12:28:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 163A42024CAE; Fri, 11 Feb 2022 17:28:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 113002024CCF
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 17:28:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4BE073800521
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 17:28:32 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-531-Y4KKuSntMBqpmzhCIaGAOw-1; Fri, 11 Feb 2022 12:28:25 -0500
X-MC-Unique: Y4KKuSntMBqpmzhCIaGAOw-1
Received: by mail-qt1-f172.google.com with SMTP id g4so9031642qto.1
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 09:28:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=9DrLI/wwpKN87m4pbfCO6JOUDI838olHVWMOdRY8oL8=;
	b=6HVZ0tuxkWomF9IJ7xQIUrrs6s320xgDRfEXcqHo4TuDn2CyiotFSxP1oZNF1umHgk
	O5BL6ulD2ewRScnEV9ntKs4FzMZibVjopeT9CjumHr/gzj4pcKvhm+Rn4NicOqUmOtaA
	l8UZAkjO8lwBdifYyszJn2iq0+MhU5j+UURG5kQ+MsOlKc8Lfzr915JDaW4lFi9ECMd3
	6IOVkZ7UlTWOd/vayx/juu7GP2B7eLo55iMLKrujA0aQPkKU2TZ85yTg+P6U0CNIuO4U
	yu+61FFFO2wkk0q7y0ZYCd5M+J0MZWwIhDOYzSqTXUNwO6COXFcWVFQtuv2+XVq1liAz
	4a4Q==
X-Gm-Message-State: AOAM530vy5VsDET0pTgJm+715LcrFqCyjguhNOT+502uWwT2WsR9Qydp
	T/Ss9kzW2ULmzwyjNY6V7+QdTVX1qsDG7Yw9/RiljNaQ
X-Google-Smtp-Source: ABdhPJzdoxig83AgxxBbg7/jvrfehbAlscc5c7E/+lqpjKHks59CSgt+JO/GbyKdUHn4KEP68B2k4/oXogRMnsBwOjs=
X-Received: by 2002:ac8:5cc9:: with SMTP id s9mr1853429qta.215.1644600504572; 
	Fri, 11 Feb 2022 09:28:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Fri, 11 Feb 2022 09:28:24
	-0800 (PST)
In-Reply-To: <c96e82a-bc5-2072-f11d-f1facb919cf2@brandt-slint.local>
References: <c96e82a-bc5-2072-f11d-f1facb919cf2@brandt-slint.local>
Date: Fri, 11 Feb 2022 17:28:24 +0000
Message-ID: <CAO2sX32AAjf8vpRSK2FqLLAPOaG_6peSzcdf4crcfQniOyTXQA@mail.gmail.com>
Subject: Re: Launching a GUI Web browser and Orca from a console?
To: blinux-list@redhat.com
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

I remember reading some time ago that it should be as simple as

windowManager && orca && webBrowser

or that with proper configuration, just typing startx...

But I never managed to get it to work...

And sadly, you can't get rid of the window manager entirely. You can
run Orca+a web browser without a window manager, but my understanding
is that doing so renders anything other than the browser's original
window inaccessible. This includes obvious things, like launching Orca
preferences or opening a link in a new Window, but also includes
anything where the browser generates a dialog box(save a webpage,
Firefox's "you are about to close x tabs" dialog when closing a window
with multiple open tabs, saving or editing bookmarks, etc.

And while I have an use a script someone else created to let me use
Orca+Firefox in a stripped down x-session, I understand nothing of it
beyond changing which window manager it uses, and I've never gotten it
to work under a distro other than the one that it shipped with...
granted, the script also generates a menu, and provided the software
is installed, gives the user the option between launching Firefox like
this, launching LibreOffice like this, or running a full LXDE session
with Orca.

I would love to have a portable script that I could feed any graphical
app as a argument and it would launch a stripped down xsession with
Orca and that app, bonus if it could default to launching a hardcoded
app if one isn't specified(I'd probably have it default to Firefox-esr
at present, but if I could use it to launch any app of my choosing,
I'd probably try switching to SeaMonkey as my main browser since I
understand it has most of the pros of Firefox while being more
streamlined and the current blackbox script I'm using doesn't allow
such flexibility.

So yeah, I've actually tried this, but never got it to work and would
like to actually get it to work. I like the console for pretty much
everything that isn't web browsing, but having the option of trying a
graphical solution for those one off tasks without installing a full
desktop would be nice... the GUI launch script having a --no-orca
option for launching self-voiced things would be nice too.

On 2/11/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi all,
>
> I know this is doable, but have never actually done it myself.
>
> I am looking for either a script,  or the info I may need to write my own,
> to launch any of my GUI web browsers with Orca, without actually starting
> up a desktop, Mate, Gnome, etc, or first starting up a WM, weather Fluxbox
> or ratpoison.
>
> If anyone could please point me in a direction, I'd appreciate it.
>
> I actually need this for work, my clients like calling on Google Duo. Why,
> I have no idea!
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint console using Alpine
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

