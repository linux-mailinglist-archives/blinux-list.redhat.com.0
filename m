Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 80406210A26
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jul 2020 13:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593602086;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2CcMs8iIu/bNO5h+ZiBHmo/78peaNR0B2bRIf7EZNm4=;
	b=QJEO3W7PvhvJZr1Vfx/NceD98dt6KFVcXdv3Gq4RRbNJ5q6uegMbrr6voHmL97maatXgP0
	fZOEGgx3OHK2nn3j701hSosv8xe9gPIA66HAJZRFdTLk8ejkfZzIwG1nu8gZUh41kGFPzp
	TLrpM5ctw8cTH2v5LWZ8gAlyJSd7jEo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-CkxmB1lmP2CO9NM1XH78iQ-1; Wed, 01 Jul 2020 07:14:44 -0400
X-MC-Unique: CkxmB1lmP2CO9NM1XH78iQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92BD6BFC7;
	Wed,  1 Jul 2020 11:14:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31C067FEA6;
	Wed,  1 Jul 2020 11:14:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB9606C9CA;
	Wed,  1 Jul 2020 11:14:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 061BEP2i000951 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 07:14:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB0192144B3A; Wed,  1 Jul 2020 11:14:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A483C200AC2B
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 11:14:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C3C6858F07
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 11:14:22 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-87-rnB8HNamNUSmj9pPNeR8DQ-1; Wed, 01 Jul 2020 07:14:20 -0400
X-MC-Unique: rnB8HNamNUSmj9pPNeR8DQ-1
Received: by mail-io1-f46.google.com with SMTP id q74so939334iod.1
	for <blinux-list@redhat.com>; Wed, 01 Jul 2020 04:14:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=/UJTojp18y7ybkLCvjhk1cnFrnrUu5RaQW+VVTofnMg=;
	b=cLEA3XayP6+YRjnheQR04njq1qoeDznqFB5qDBSqnNWzYfaNAxgRzY0G6LXMvX26xU
	ipRlllP6tlFYteGaKPwddAQnN1L+VmsXlblirOzg/GH0l6mkeOIxvhH59kN5OrHfsiO9
	g78dixCUW7Dl4DURVEpgraHCHfp/+aKiWy+oGCEZva4MQlIN/rMoBsbQv44rAdz0qZQD
	fUkBuwyUPUoxwxTyLVViflL4AfT54BtEuVXygOOiq0GThP4ZWjX5TF9bH/3Iarc0ZDAW
	ZDO5W4Ha+2vxHofr4hjwzbshWcQvJWbLFnfI/4ha3gyu5l9JsbZoXAp3u6IPx784kz9m
	r2Gg==
X-Gm-Message-State: AOAM530VEWZn5Lf7HWcN7iIRWuWXQyDwNBHagMqMfPVhzGNzk4SJDRO7
	6OJsVzA3DHjlcv2sfj7vazCpPEItKnVK4ddixe0Evg==
X-Google-Smtp-Source: ABdhPJzdPbG8zZY9gPgL84D+tUGl9KW3Aeic7Q/4UcTFyQD2esp8rypI+82iqa5Hpj16xCIwQPykd8BOw4vnN6QH+cc=
X-Received: by 2002:a5e:880f:: with SMTP id l15mr1648294ioj.94.1593602059761; 
	Wed, 01 Jul 2020 04:14:19 -0700 (PDT)
MIME-Version: 1.0
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
	<CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
	<CADj8Jxcw1vypzVFk+NCLj3rw3q__n69QZRuJQaZewaYUKhAhKQ@mail.gmail.com>
In-Reply-To: <CADj8Jxcw1vypzVFk+NCLj3rw3q__n69QZRuJQaZewaYUKhAhKQ@mail.gmail.com>
Date: Wed, 1 Jul 2020 13:14:08 +0200
Message-ID: <CAPo=n-8ep5Pm_rGgHiSy9_ZoNi0jk0-g3P0z1ACcOtYK9S+mJQ@mail.gmail.com>
Subject: Re: using orca wile using jack
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Make sure jack2 is using the correct driver and sound device. With jack_control:
jack_control dg
will show the selected driver, and:
jack_control dp
will show the parameters of the selected driver, including the
selected sound device.
Also make sure speech-dispatcher is set to use pulseaudio as sound
backend, and that pulseaudio is using jack as the default sink. I've
found that it does take some fiddling sometimes to get everything
connected, and pulse doesn't always switch to jack automatically, at
least on my machine. One thing I've done in the past is to open sound
settings and set focus to the output device selection list, before I
start jack. Then I can use the up and down keys in the sound dialog to
try and set jack as the output for pulseaudio.

HTH,

Rynhardt



On Wed, Jul 1, 2020 at 1:00 PM Linux for blind general discussion
<blinux-list@redhat.com> wrote:
>
> When I start jack2 I don't have any speech.
>
> On 7/1/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > Hi,
> >
> > One option is to use pulseaudio and have pulse output to jack. This only
> > works with jack2 with dbus support, and you will need the pulseaudio jack
> > plugins (in arch this is in a separate package for instance).
> > You then start jack with "jack_control start", after which you should make
> > sure jack is selected as output sink for pulse.
> >
> > Regards,
> >
> > Rynhardt
> >
> > On Tue, 30 Jun 2020, 19:24 Linux for blind general discussion, <
> > blinux-list@redhat.com> wrote:
> >
> >> is it possible to use jack wile using orca? How should I configure it?
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

