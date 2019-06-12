Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FEF423F8
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2019 13:29:26 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2CE38308624C;
	Wed, 12 Jun 2019 11:29:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CE0B5D968;
	Wed, 12 Jun 2019 11:29:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B10D424AFA;
	Wed, 12 Jun 2019 11:29:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5CBRlD8026909 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jun 2019 07:27:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C99537BE97; Wed, 12 Jun 2019 11:27:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx11.extmail.prod.ext.phx2.redhat.com
	[10.5.110.40])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C3AB17BE96
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 11:27:45 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B863930C1AEA
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 11:27:14 +0000 (UTC)
Received: from rednote.net (localhost [127.0.0.1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id x5CBR6oD026140
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 11:27:06 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net x5CBR6oD026140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
	s=default; t=1560338826;
	bh=eGn/nSLXgbcu6vJquVVIDkP9aXo0ry66sHM0gz0fT6c=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=EdOo4JPCPBg3DEoyyDAoijbrTGTWBCK3/ELTJFfVRkg0U5aRhHfWDYUsZKXIO47Cs
	qTq29aeYhtfJ933Og6BZCw5hQjBs5yxhc5kK2Q9gylNl9PGFqx6Y20PQBMrlj/f2b0
	WszHnwHe68xH4X3PN2KrFbJRyqEn6mjenPI1J0Po=
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id x5CBR6o2026139
	for blinux-list@redhat.com; Wed, 12 Jun 2019 07:27:06 -0400
Date: Wed, 12 Jun 2019 07:27:06 -0400
To: blinux-list@redhat.com
Subject: Re: Audio Recording
Message-ID: <20190612112706.GA2272@rednote.net>
References: <20190609.052602.869.15@[192.168.1.181]>
	<alpine.NEB.2.21.1906090142180.26372@panix1.panix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.NEB.2.21.1906090142180.26372@panix1.panix.com>
X-Operating-System: Linux opera.rednote.net 5.0.17-300.fc30.x86_64
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Greylist: Sender passed SPF test, ACL 242 matched, not delayed by
	milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]);
	Wed, 12 Jun 2019 11:27:34 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]);
	Wed, 12 Jun 2019 11:27:34 +0000 (UTC) for IP:'66.228.34.147'
	DOMAIN:'opera.rednote.net' HELO:'opera.rednote.net'
	FROM:'janina@rednote.net' RCPT:''
X-RedHat-Spam-Score: -0.102  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_PASS,
	SPF_PASS) 66.228.34.147 opera.rednote.net 66.228.34.147
	opera.rednote.net <janina@rednote.net>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.40
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Wed, 12 Jun 2019 11:29:25 +0000 (UTC)

In addition to the alsa-utils' arecord, you might want to familiarize
yourself with sox:

http://sox.sourceforge.net/


Then, if you're up to the learning curve, there's ecasound:

http://www.eca.cx/ecasound/


Depending on how serious you are about audio recording, you may also
need to familiarize yourself with ffmpeg and possibly also jack.

Best,

Janina

Linux for blind general discussion writes:
> On cli I'm using aarecord with some parameters so we don't record a .wav
> file since size is limited.  The wav file you can record you can use to
> verify your microphone's volume once you listen to the recording.
> 
> On Sun, 9 Jun 2019, Linux for blind general discussion wrote:
> 
> > Date: Sun, 9 Jun 2019 01:26:02
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Subject: Audio Recording
> >
> > What are we using for audio recording on linux these days. In the gui. Is audacity still the best one from an a11y standpoint? How about CLI?
> > I'm interested in recording from line-in so I can archive some of my tapes.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> 
> -- 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
