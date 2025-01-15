Return-Path: <blinux-list+bncBDP7P6HU4IERB7OZTS6AMGQEC7JYHUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DB1A117D4
	for <lists+blinux-list@lfdr.de>; Wed, 15 Jan 2025 04:35:27 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467975f1b53sf19072481cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 19:35:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736912127; cv=pass;
        d=google.com; s=arc-20240605;
        b=jrNlOfK5qLBcui8vFixyz9Lw9SLfgeykno/sJ3UyE5BSsHlCWkW4PNIGcjxZurfuwt
         CqUIl/Ud58G80kG5B/Chzfi6vxlY2U1FSrCpPW3Slb3iA4xIk4/KSfRoX76c+yYrfAlL
         pzNl6IcYSlPhNHsIUKa1Vz6eHkGFRyoVlvFmbp/Cw6HQmsScT6v9drPGFqrhMJ0W3mm9
         Fn5xa4TrPAL+L6oAuQmONCuiBZouCKq4utCRlcCD2SyHPdmbaOMnPxyTkSvZ1yjtmCAw
         1XkkvsGJXFg9uY8YSJ+N1aKm/PRovCrYKXsWHUGvq3uIot54X0pqs/guGkVfpjiUMe4J
         RVQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=gCm6hnvls8Ap2GzHfaqQMxm/ZklXPYd3pCmmHpCbAxI=;
        fh=atfD4eHHfX3zxbkc+tURKH6KAz2RrmBI71DrJn4iw+g=;
        b=IYM1AMNqINZlvM8Yn3dibexJdZhrn0r3rLzRpbs9Q8Nf3MEnRXHlU6VqvUnjADJF39
         gFJ7aMafziPkj5lWz31PCg9MekUWUeIpdq6Ta+Yu54vge6Ci/CeNRduLbWs3STFT26rc
         Y6y1D7UhC0oPUq7Wou62Nqg5iK0UBY5i1+8iF7iH6zYnmhSj2D5MZdy280Ngax8SMcMW
         fDIFp4zPltQblERK3JEyiyOAbjrFK3o5rw5jjRHz+/nHTDxito085pnpB9d5761S8YJP
         A2Zk5uTlkrM/rW9un9DGk3h8C7hUzIcy6f1zEQHI0JiBYWTVt2VfvZmTildlibI43Dyw
         E/fQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.52 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736912127; x=1737516927;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gCm6hnvls8Ap2GzHfaqQMxm/ZklXPYd3pCmmHpCbAxI=;
        b=bZ3FB9+37q/YStMgANFMm0Oqggbwejcx2dS5EalbgNFkalbwuePfplTCJ+VYzbf1yo
         2YH+wHol6Qywo6/GaEdm/Mg/jg7LBxBMQhQn/lxPxxZqYqOptnx9b3aKrki9Rkz4qRMh
         sn+jGILldRH/fHM9Kmq6l0dfK8khQMK4nKqEMRJNQyvj0a+0zK78nmJ/TKzC1qrb4+IJ
         Rsw6N3Wql+O+tK169cl0RBsA3h9V7I9DdGv0vLsblBy6Q/Af/Ubs6Qn9ooUnYbkSR+C7
         5/FQZaxoOqtFgMoOnikpWjKztVJNTEowgwnCVI8F17pXv/Mf2EKAdqEh6v9zrl0mH2K/
         aYqA==
X-Forwarded-Encrypted: i=2; AJvYcCXuDlb85K8qiT747WK8XtyOq+nHtN0hvb1TJ7/Ivy5hCafwyCmTlhnbFHHAfkV2ungaFKPGqQ==@lfdr.de
X-Gm-Message-State: AOJu0YwqMx71mivbn/GaGzVhcfuGdxGpDQT/XdrDurXWagDqsWv5yxO/
	3V/KPnd4wAofcoFtedMcL9rzj4EoZ0FX+ZW9Rfs0mJOa0XlN4h3vJqNZoz1IBMg=
X-Google-Smtp-Source: AGHT+IEea2sOB0d7paLQrMjQPVodHgHzGXRPnWSEpJMMCmZ9wF4BG/F3NS67bi1aSJ2JEf8USSoI7A==
X-Received: by 2002:ac8:5912:0:b0:467:6486:78bb with SMTP id d75a77b69052e-46c70fff16dmr146251231cf.5.1736912126294;
        Tue, 14 Jan 2025 19:35:26 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:a029:b0:466:b34c:880d with SMTP id
 d75a77b69052e-46c7aa08f3als15773771cf.0.-pod-prod-03-us; Tue, 14 Jan 2025
 19:35:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX5Exz8ninFnvfif01TtW6IPv0QgEp/z0ZdrhccCXn9g9WIoXKpTRoPOW/URjH0x8ceddDBlbUVAsjJOA==@gapps.redhat.com
X-Received: by 2002:a05:620a:3906:b0:7b1:3f88:48ef with SMTP id af79cd13be357-7bcd97b1a95mr3949645485a.46.1736912125301;
        Tue, 14 Jan 2025 19:35:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736912125; cv=none;
        d=google.com; s=arc-20240605;
        b=PX/DDgStz75B47Q6Uy2RlJOMfG8+3UTgxluvMkkITJgRwM5lbUVIq0ZXZo5Ey4ZaRT
         F63O/cXEQVCeek3I9MuagjzOgyNLpKevGgJ3GPIHniLpXVFJNFkufYYRodydzA1EtIRc
         Chlk0J85ImtpMracThryP4YrMO53+ch1FxaLtQpR9QAXhLpoRyF5NycmpMSpUVkpDbje
         GcX8RzQ2BF0zwRL4N2YYu5grctWWRZ+/8G+ijT0VAShqlNRIRETB5nnyVs8P32I6tFCG
         M2IvFzahN3Iro+h5D3Guu0n+vDyvDum1F6WhKn3n/Jg2OZrlZZ/qQ2rNq8GGBHKKRu0m
         V9yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=1snFMXtza0t6hPZTZKyVQ8dIe14+knmsNkn9hO3Sdvs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=D3JGa3hlWDf1DyqOtyJ+5VsyGzrOg28wZTd/VJJeCtL8n+DD3FCE9PQjUwABeRvIaR
         XlkcmvQb2i9GGnMGPhZrrTUQutQ0EJfvJ/vi2PctFAATYQMF2o8NnK5JY8l9zu6zYSJr
         Lks7SHQwjGFclChrfW4xXSfRRGuZLBKCZodWcuEqc3ijgqKaJ+NQnBNmAecnkAotw5uV
         4dAiy9cmWPbEOFmKBQsE+v5ZvKr7sVP189VK0c5p3b+9y1WKXN1R6E+PgnQqzZlWDrJS
         l2KeD/krDTCVWktLJHQZLE16FCfV0zkDnGaXQEywJoHcqUUwOdca3NCRCQC7QlX18XCM
         td0w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.52 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7bce3307d91si1465871185a.269.2025.01.14.19.35.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 19:35:25 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.52 as permitted sender) client-ip=65.20.63.52;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-340-QAbIcV7fPiuLfTRLDWXjhg-1; Tue,
 14 Jan 2025 22:35:22 -0500
X-MC-Unique: QAbIcV7fPiuLfTRLDWXjhg-1
X-Mimecast-MFC-AGG-ID: QAbIcV7fPiuLfTRLDWXjhg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C6D5019560B3
	for <blinux-list@gapps.redhat.com>; Wed, 15 Jan 2025 03:35:20 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C0DA119560BC; Wed, 15 Jan 2025 03:35:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BE5A419560AD
	for <blinux-list@redhat.com>; Wed, 15 Jan 2025 03:35:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3CAAA19560B3
	for <blinux-list@redhat.com>; Wed, 15 Jan 2025 03:35:20 +0000 (UTC)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai
 (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.52]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-421-j-mRcVgVPKyajKYecbFJiA-1; Tue,
 14 Jan 2025 22:35:17 -0500
X-MC-Unique: j-mRcVgVPKyajKYecbFJiA-1
X-Mimecast-MFC-AGG-ID: j-mRcVgVPKyajKYecbFJiA
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 67715D1F030564A3
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudehjedgiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtie
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 67715D1F030564A3 for blinux-list@redhat.com; Tue, 14 Jan 2025 22:35:17 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tXuBT-0001H0-2A
	for blinux-list@redhat.com;
	Tue, 14 Jan 2025 21:35:11 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speech-dispatcher Before I Do Something Stupid
In-reply-to: <45995941-6847-4694-b01e-d67ee7418667@gmx.it>
References: <E1tXPM7-000KS7-0c@wb5agz> <45995941-6847-4694-b01e-d67ee7418667@gmx.it>
Comments: In-reply-to "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
   message dated "Mon, 13 Jan 2025 21:40:53 -0500."
MIME-Version: 1.0
Date: Tue, 14 Jan 2025 21:35:11 -0600
Message-Id: <E1tXuBT-0001H0-2A@wb5agz>
X-Mimecast-MFC-PROC-ID: Pk0Su6wgn1o-ycTrUZA5s9b--x9WbvdB05p0P9NXPb8_1736912117
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4cdDOHEsE8Z6jyLn6fVswfNw2rIk3s0NkASW-yIbtAY_1736912120
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <4896.1736912111.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.52 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Thanks to Kyle and others who responded.  I'd like to say it's
working but I'd be a lier.

	I think this is a case of the goal posts being moved by
the march of technology.  Here's what I learned so far:

	Pipewire is what newer versions of ubuntu and debian ship
with which replaces pulseaudio and performs all the functions
better than pulse did on those things it had trouble with.  If
you wonder what your system uses, run this very safe command from your
user login:

    pactl info
it will report details about your sound setup.  On the
orca-running system, this command produced

Server String: /run/user/1000/pulse/native
Library Protocol Version: 35
Server Protocol Version: 35
Is Local: yes
Client Index: 539
Tile Size: 65472
User Name: martin
Host Name: wb5agz
Server Name: PulseAudio (on PipeWire 0.3.65)

Hmm, what-s that all about?

Server Version: 15.0.0
Default Sample Specification: float32le 2ch 48000Hz
Default Channel Map: front-left,front-right
Default Sink: alsa_output.pci-0000_00_1f.3.hdmi-stereo
Default Source: alsa_output.pci-0000_00_1f.3.hdmi-stereo.monitor
Cookie: 7008:3ee2

	The system has a man page for pipewire but that pactl
output seems to indicate that there are vestiges of pulse.  The
system runs mplayer just fine and also seems to behave normally
with aplay and arecord.

	There is nothing about pulseaudio in man so we seem to
have some sort of mashup between pipewire and pieces of
pulseaudio.  What can possibly go wrong?  Well, it did when I
tried to use fenrir.

	Finally, if you go to /usr/share/fenrirscreenreader,
there are 2 subdirectories and one of them is tools/ where the
configure_pulseaudio script but there is no configure_pipewire
script.

	I looked at that script and it's only 74 lines and not
complex at all so I thought I'd have a go 
and make a configure_pipewire script.

	That didn't solve any problems so I think the current
operating environment has out-grown what fenrir screenreader in
it's present form knows how to do.  I did not leave it on the
system because it spawns 6 daemons even when not inuse.

	Never once did I hear espeak say any text .  I think
the engine that vacuums up the standard output for the shell is
whats broken because it obviously founa default sound device when
run as the logged-in user.  When run as root, it complained about
no sound card being defined but I always heard the musical startup sound
when starting and stopping fenrir as the logged-in user.

	At one time or other, I tried all the espeak settings.
with no real change.
At least I think I did.

	If a new version comes out, it is certainly worth a try
and I did check sources in testing to see if there is a newer
version and so far, no.  The fact that fenrir screenreader can
run in user space is a real plus  since it won't mess up orca but
it's not there yet.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

