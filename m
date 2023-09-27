Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C28FF7B0A1A
	for <lists+blinux-list@lfdr.de>; Wed, 27 Sep 2023 18:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695832066;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LiQJehz0N9u9+HMJmQCf/4QxGW43Z/ASBN0igVHdgeU=;
	b=Uf3cpS0bgFt9aNwULg+m9yPfom5lj6aJ1be2xTsHzSZJOmYxG2Z4ktv7gftXBwipuOcq0M
	RI6Aa452GfeqWWrSHqDa/X//O6dyHu+vCJ2qm53z/jePzfAeUtaXhuljoCFGlVZqN6YEuT
	p2iFhBhOoo2dHREEIlqKM23mEd9GcBE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-xMfwBwPGNj6JWPwMVAUs9w-1; Wed, 27 Sep 2023 12:27:43 -0400
X-MC-Unique: xMfwBwPGNj6JWPwMVAUs9w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 347D9185A78E;
	Wed, 27 Sep 2023 16:27:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7B4C4492C37;
	Wed, 27 Sep 2023 16:27:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 042571946597;
	Wed, 27 Sep 2023 16:27:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 27 Sep 2023 11:25:55 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: RHVoice under Fedora question
In-Reply-To: <mailman.1504.1695826519.4021071.blinux-list@redhat.com>
References: <mailman.141.1695580167.4021076.blinux-list@redhat.com>
 <mailman.924.1695768996.4021071.blinux-list@redhat.com>
 <mailman.1504.1695826519.4021071.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1740.1695832044.4021069.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

does anyone with snaps enabled know if rh-voice is available from snaps?
If so that might clear up lots of questions and problems.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Wed, 27 Sep 2023, Linux for blind general discussion wrote:

> Hi,
>
> thanks a lot. Now, I can successfuly do scons command. But the sudo scons
> install command installs RHVoice to /local or somewhere including /local and
> Ia am unable to get it working in Speech Dispatcher. So my question is, where
> and what change to get correct path for installation from source? I think this
> is Fedora specific, because Ubuntu, Debian and Arch Linux work as expected.
>
> Thanks a lot,
>
> Pavel
>
>
>
> Dne 26. 09. 23 v 23:39 Linux for blind general discussion napsal(a):
> > Hi!
> >
> > On 9/24/23 21:29, Linux for blind general discussion wrote:
> >> Hi,
> >>
> >> I want to install RHVoice from source under Fedora, but I have a problem
> >> identifiing names of the correct dependencies. Ubuntu says:
> >>
> >> apt-get install gcc g++ pkg-config scons libpulse-dev libspeechd-dev
> >>
> >> So gcc and g++ are ok, but I can not find the correct package names for
> >> other dependencies.
> >>
> >
> > Please go to the definitive source instead. The directions on RHVoice
> > project github page say you would need SCons installed on your system in
> > order to build the binary. You would also need audio libraries and their
> > respective development packages plus I guess pkg-conf and the respective
> > development package.
> >
> > First we need to check and locate package groups and install them.
> >
> > <code>
> > localhost$ sudo dnf group list
> > </code>
> >
> > For me this shows three likely candidates which are: 'RPM Development
> > Tools', 'Development Tools' and perhaps 'Fedora Packager'.
> >
> > We'll install them by running
> >
> > <code>
> > localhost$ sudo dnf group install 'RPM Development Tools' 'Development
> > Tools' 'Fedora Packager'
> > </code>
> >
> > Secondly we need source code, dependent libraries and their respective
> > development packages.
> > We need to check the official documentation on
> > https://github.com/RHVoice/RHVoice/blob/master/doc/en/Compiling-on-Linux.md
> > By reading the documentation we find out that we need a tool called scons.
> > My wild guess is that it is readily available on one of the preconfigured
> > repositories. Let's find out by running
> >
> > <code>
> > sudo dnf search scons
> > </code>
> >
> > Which for me shows a candidate called python3-scons. Then we'd like to check
> > this indeed is the tool we want. We can compare information on scons.org web
> > site with information on the install candidate package.
> >
> > Package information can be read running
> > <code>
> > sudo dnf info python3-scons
> > </code>
> >
> > Use the same commands but use 'pulseaudio' and 'speech-dispatcher' as the
> > last argument to dnf search (in place of scons). This way we find the needed
> > development packages.
> >
> > Since these are not package groups but single packages this time we use 'dnf
> > install' instead of 'dnf group' install.
> >
> > <code>
> > localhost$ sudo dnf install python3-scons pulseaudio-libs-devel
> > speech-dispatcher-devel
> > </code>
> >
> >> Can someone help please?
> >
> > Sorry for my earlier ignorance. I've been busy on other fronts lately. I
> > didn't do the actual installation of the packages mentioned in this email
> > nor did I try compiling RHVoice. That's left for an excercise to you. Later
> > on if you would like to start packaging software for Fedora you'd need to
> > get used to rpm packaging and spec files. There is pretty good documentation
> > available for that.
> >
> > Hope this helps enough to get started compiling stuff on your box.
> >
> > Regards,
> > Birdie
> >
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
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

