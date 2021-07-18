Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0160B3CCA40
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 20:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626632923;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1yWPaPJsSAsGKhuYdGo8IlhTu8+B7c+kJcNhlloUt2k=;
	b=WvUhNypF+pVzoOZBiu+ep0Jip4s28UG1eaN/g8yWrK3Am1FGG5RoiN0EYijJ7TfO0MVFkj
	+h3GO3IEw2X4FzEpqkXYRywpUfJCy06D57Kt6g+qtmRcqsb8afmyb0M2vPqrXxz06HfEM+
	6zq6ibEp3C6Ulosh60lylmMADaAfxLE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-62-5GDM7IEDM0Wjf2QDIReTVA-1; Sun, 18 Jul 2021 14:28:41 -0400
X-MC-Unique: 5GDM7IEDM0Wjf2QDIReTVA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BDCFA1005E4D;
	Sun, 18 Jul 2021 18:28:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A23560C0F;
	Sun, 18 Jul 2021 18:28:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0565B4E9F5;
	Sun, 18 Jul 2021 18:28:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IISTp9029153 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 14:28:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 42037216868E; Sun, 18 Jul 2021 18:28:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 374E4216868B
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 18:28:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50782802E55
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 18:28:26 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-288-cR9ReNAXOBqpBqU5Z8mk-A-1; Sun, 18 Jul 2021 14:28:23 -0400
X-MC-Unique: cR9ReNAXOBqpBqU5Z8mk-A-1
Received: by mail-qt1-f178.google.com with SMTP id v14so11412952qtc.8
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 11:28:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=qtT7l4RLKT9DdVLqwwq+tGvvYoj/UttRNBca8cOU8fk=;
	b=YOAoxdyahuwMFA2+y8tx/JpZkPv6TSOAwh+C3ifFz6aNIbn0QRXd7QJipGQ1alvoD7
	xAFfqTc3KDqipEwYaIrDneRKVZ81d1Niy2w+j3wp9PqeBMGMigBV5httmTi9bUpI+aFa
	BCGXalJTHK1iUqv2onYSyNek7xJUfhO9CIwgFPxVnYPSzQuMoABJ1cwZ86vAxB6Z+Z8Q
	i3PnfB7ASEmTAPY08D/GA1+crxcKAQo8ml0XXm7pr49RGnJuh9+b1fNnjXzskTuJr7qi
	+Myn1LaE9pOwa/aUAOIClHzJxCPFmfTspNzZtBcpls1vmGrXK0vf1F9ybomZnSbz04eX
	KlTQ==
X-Gm-Message-State: AOAM531RGNXJVyESqvQ4SxJ/wjI80H0Cwe6odgdIJLr05gItMq7QH+9J
	clQnkLoP+c2zfcQFBdqwGZikqycllYgvYoGvCyQzlMkV
X-Google-Smtp-Source: ABdhPJyimwj2esQO15uUNhOs3aNEd5w3wnvs5xKhTKT+DJsUiJsl6AF0mv9fwyrOROT9EHgF398Q9L9j0r795If+gaI=
X-Received: by 2002:ac8:7f42:: with SMTP id g2mr13945897qtk.218.1626632902787; 
	Sun, 18 Jul 2021 11:28:22 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
	<CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
	<alpine.NEB.2.23.451.2107181324090.12858@panix1.panix.com>
	<CAD_4ddTj4QJJ0afkXMVmb2mHY5pCHbJDtEb9u8XDx9Uorj7eZw@mail.gmail.com>
	<fa580ca1-904b-9718-c183-89d3f6af3c72@gmail.com>
In-Reply-To: <fa580ca1-904b-9718-c183-89d3f6af3c72@gmail.com>
Date: Sun, 18 Jul 2021 20:28:09 +0000
Message-ID: <CAD_4ddSrn1qpFxNd6ibcy=1=GN6Zx2W2EXVipgB5X3NXL7TMUg@mail.gmail.com>
Subject: Re: espeak-ng on archlinux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Hello there,

If you're talking about the archinstall script, you just need the latest
iso of arch linux.
when you boot it up with speech, just type
archinstall
you need to have an active internet connection, otherwise the script won't
run.
Best regards.
francisco.

On Sun, Jul 18, 2021 at 5:55 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> How die you get this script working?  Have not tried it, but was
> wondering about it since it exhist.
>
> Hi,
>
>
>
>
> On 7/18/2021 3:31 PM, Linux for blind general discussion wrote:
> > Hello there,
> >
> > I haven't created any espeak-ng.service file to make systemd start it at
> > boot, when speech-dispatcher starts, espeak-ng starts as well or
> something.
> > I used arch's new guided install script, or archinstall, which
> simplified a
> > lot of things for me.
> > I tried with pulseaudio and pipewire and it worked no matter what.
> > I just use pipewire because I find it more likable.
> > Best regards.
> > francisco.
> >
> > On Sun, Jul 18, 2021 at 5:26 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> >> The only item not installed yet is pipewire.  Did you write a
> >> espeak-ng.service file to bring up espeak-ng on boot up?  I haven't done
> >> that yet and have to manually start it after login.
> >>
> >>
> >> On Sun, 18 Jul 2021, Linux for blind general discussion wrote:
> >>
> >>> Hello there,
> >>>
> >>> It works for me here.
> >>> Did you install speech-dispatcher, alsa-utils and alsa-plugins? Did you
> >>> install pulseaudio and all related stuff as well?
> >>> I am using pipewire here, but it works without a hitch anyways.
> >>> If you're trying to get a screen reader running on the graphical user
> >>> interface, make sure to install orca as well.
> >>> Best regards.
> >>> Francisco.
> >>>
> >>> On Sun, Jul 18, 2021 at 4:29 PM Linux for blind general discussion <
> >>> blinux-list@redhat.com> wrote:
> >>>
> >>>> I got espeak-ng partly working but not completely.
> >>>> When I key a line in and hit enter, espeak-ng speaks what I keyed in.
> >>>> That is all espeak-ng does.  So far as I can tell no espeak-ng.service
> >>>> file exists to enable and start espeak-ng when the system boots
> either.
> >>>> Finally, if during an archlinux installation espeak-ng is installed
> >> rather
> >>>> than espeak it's possible it's not pulling dependencies espeak-ng
> >> needs to
> >>>> speak.
> >>>> It would be nice if espeak-ng would speak what the computer puts up on
> >> the
> >>>> screen after I type a command but this isn't yet happening over here.
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

