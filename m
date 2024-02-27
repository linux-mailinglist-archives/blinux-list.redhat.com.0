Return-Path: <blinux-list+bncBDP7P6HU4IERBFMM7GXAMGQEJ2U6NTA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D4C86A0D6
	for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 21:29:11 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5a0a19006a3sf1959089eaf.1
        for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 12:29:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709065750; cv=pass;
        d=google.com; s=arc-20160816;
        b=s26RPRHCMjDOqX6FSANBTQR7nRPUUc1YR8nt0LHsU8k0z5NRRiwBf75332bbBOV8hq
         WsSwcZbIsJzc5YGtMRhhLolkjDrZxPBhz48+mB0KdZYkzpIsyspfExmoH11h6LqZrATW
         SmlCxy8kBYzFGwhhZWaf5ZLyhD7Abd5snz3AEZihh8cPTjkn7hmAeV781Rn8L0YDYQ5N
         SWGkHxSizq4J4biul2l9KSIxhuL4q89iN91i38AgtyeyUt239xYkGaqq9V8ZUkA6rDAV
         i5IExM/rd1X7Z6gsgQ18Qy9SCOQJNHSdx6RdTdjLaR7KrtAUw6JWWVdXMMNch7LyrPN0
         ubQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=lZ0zFbi/F+NeDEBLlgsC0Kisv9UhJIGxMx79+yljknc=;
        fh=WLKl5Ej1bH12opzsbCTm5y7YDsGkXopzhzmuVkM2pU8=;
        b=0lpdG3hgL231Zv3uKk5pggk/PZRu0dGyjvwH24m1rQbwnZ7nv+/YYNhfikVeIEtEGV
         NzYGCoCF3K3T37N9ZEe7r+i3Nv2R3YLQnUdEe7ai8ibPVrdi7wGG8pf0q0OD6ZAZw1ic
         3n/2uN3H55hG11aXgnN62bWwsn9dFDD3CmX+OTWhcl9FZ2nIeCpqbnuF2rQOGlwN9ax6
         K73UJhE+VJwUkpBg/Q220FlJ+wUM4CS+Y7xH1AVT1dzEianp0ZvJAhhneRTXGRTYv850
         OTFddY5yTRMGdbBxMdvtFvhjSZblhkMzgh24vlDCoqreFk0rrpQ/HGcp0mHaJ3a2X2PK
         Jxyg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.32 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709065750; x=1709670550;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lZ0zFbi/F+NeDEBLlgsC0Kisv9UhJIGxMx79+yljknc=;
        b=SH1nfvD8tPn0iHa+4K4ohU9pCz5EPl+kdf+Fl5Qx3k4e9ND/BJ/oAXDqccmQ21dCcK
         5I00OxGjr4mxqOr/MK7GiS3WFwCnrwyJoy0m2ZVn2KEp8uaysB8rcMi6kiWkNbA2o8nV
         9xK/lv4CiSZK63JCyfjZg3V/nq4qPXfaZT1IfClWxbd4sAgnrL1dGKRBkOc+4Ix1yrcj
         dYFkJa4jEnCR7zb1RDaGQjxXZPg5INxZEgdS+4TCb/j926vqoZNv1oqgYpldlXXE9R2Z
         nHCG+4+hyw30+x+BtAKPyzvrsbOYICP6YUbFHSaHowbYF0eUXIPCRq6ifI2Ac1oQbmYb
         ZjOg==
X-Forwarded-Encrypted: i=2; AJvYcCWM2m4jFaV8p8PAksjpqB+7+LNQu1U+Jbo5Nw7sOJO/UBdC6GmZpD/ov8p/HYPTBdIgQSTdNN9eTpV9w+BihFzWHOoW44tcyvBj
X-Gm-Message-State: AOJu0Yw0BdmcWhXlNehxlKnWzofhMI4rGTZDIG4jjHMBMhEwAOvsLtqx
	feu7k5hR3gb3cw/NPb0P+ep5KrAF/O7tKKm7frUk5xmEOgdXdNTRayEwnaqC19s=
X-Google-Smtp-Source: AGHT+IHi9ZD9JX4iCA1TkmPWogY8wCqpXG8fBfptdVxYvIeduGel9P8YrbnAmDHecfFWAvg1bqYrvQ==
X-Received: by 2002:a05:6359:4588:b0:178:faff:7173 with SMTP id no8-20020a056359458800b00178faff7173mr8420103rwb.22.1709065750243;
        Tue, 27 Feb 2024 12:29:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:b65:b0:68e:eeaa:8248 with SMTP id
 ey5-20020a0562140b6500b0068eeeaa8248ls988563qvb.2.-pod-prod-06-us; Tue, 27
 Feb 2024 12:29:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUcz38LuTgAKCEYKtILWHqJu+d5v47qzVUoE6YUtmmSWgDC72zhVklCd22uz9MgJcOVkYi3D+kzbW/R3RlzT5ykbShztGVWSxqQ1X2C
X-Received: by 2002:a05:620a:3dd:b0:787:2017:21b2 with SMTP id r29-20020a05620a03dd00b00787201721b2mr3175734qkm.70.1709065749284;
        Tue, 27 Feb 2024 12:29:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709065749; cv=none;
        d=google.com; s=arc-20160816;
        b=KfyNQzH41T0VON4s41/NeV+wqBBLL54ZxgWudbg1XBvBMovaosmHEZFEvx0FM9o0j/
         W31ZTlbijCKsR491Krs1s8LBcXlhzSS0DD7+fTrP/m+pB5yzCMpKjQj+gzUqzbr8ss2V
         HaLlG6cB6J07+ppdEy/nxEIxt7UPq/yZU0HNw0JnyY+V2Rq+QEK3dIFYUYPGWJxwNLW7
         cc1DP35M8gMMcLiBsBSn0CnohSd7VZnuRg/1pxrDHhXExBMCXAGGzjVmIUlUqNUUTpSS
         0UFglO5sgPgdNn3vcMrLYV2JpJXmwSlKzv2nQXjzOLMhqUD6rQzBjiwfSy+Qk6MWYuKk
         rCqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=Pnj7q3NVTLlNAU6lhYcSEdNeqK0Ygc5NduCJuXslmUI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=qKkcmdaduGYo9SykxwD1my346BKMNgHS9b8MCwqlnDEOYqu8DPaJj5JCWCdja8CLWX
         skb7Kw5UP8PLaZY0ZHuRrYNNPp71RvZ0O7bGyV2ibi8KgEjW9QMSEIxqjm7m8805+msS
         6SOeu9UeH1Gp3TzvXRuSlVhEjZePRamum/amJkDSL7q4eSw2zcjyJH7qrOJq6hyilPq+
         tzIMQ8gmJrKiiyQRFzdeMFM8UjkxKD9Bt8J+ZYSS6LchxUsXMzsaVXE7HcX/Rgb9Hhuz
         GHaoKianjFNJlMxvU7mdAFZbFkD5Ny6h5BRJ6frmAgCckK63eNGCWRzCYoI6MEZkKW/u
         INDQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.32 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id b3-20020a05620a270300b00787e14f24e9si3017643qkp.332.2024.02.27.12.29.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 12:29:09 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.32 as permitted sender) client-ip=65.20.63.32;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-124-eeRmLs-_Oje9H6j304jY2g-1; Tue,
 27 Feb 2024 15:29:07 -0500
X-MC-Unique: eeRmLs-_Oje9H6j304jY2g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DA9A2820B74
	for <blinux-list@gapps.redhat.com>; Tue, 27 Feb 2024 20:29:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9A7CE1121312; Tue, 27 Feb 2024 20:29:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 611E1112132A
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 20:29:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79E27185A780
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 20:29:06 +0000 (UTC)
Received: from altprdrgo04.altice.prod.msg.synchronoss.net
 (altprdrgo04.altice.prod.msg.synchronoss.net [65.20.63.32]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-615-IXoaZTqqPHS3NpTmnAhQow-1; Tue,
 27 Feb 2024 15:29:04 -0500
X-MC-Unique: IXoaZTqqPHS3NpTmnAhQow-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65C3739303FF676C
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrgeehgdduuddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtge
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo04.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65C3739303FF676C for blinux-list@redhat.com; Tue, 27 Feb 2024 15:29:04 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rf44Q-0008Xu-5v
	for blinux-list@redhat.com; Tue, 27 Feb 2024 14:28:58 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: archival social media for the blind?
In-reply-to: <CAO2sX30LnDznpE+VwT2P8ypMrNmNovw03+1+f139P1P574ZCrA@mail.gmail.com>
References: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com> <Pine.LNX.4.64.2402252345480.900490@users.shellworld.net> <E1reXEO-000RgT-24@lapcust> <20240226100618.ydn7y7ay2py3esv6@sprite> <CAO2sX30LnDznpE+VwT2P8ypMrNmNovw03+1+f139P1P574ZCrA@mail.gmail.com>
Comments: In-reply-to Jeffery Mewtamer <mewtamer@gmail.com>
   message dated "Mon, 26 Feb 2024 14:06:44 -0500."
MIME-Version: 1.0
Date: Tue, 27 Feb 2024 14:28:58 -0600
Message-Id: <E1rf44Q-0008Xu-5v@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <32852.1709065738.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.32 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

There is no one right or wrong way to do this but you can even get
help by using the man command but through a filter to turn the
output in to plain ASCII text as follows:

Let's say you want to look at the ls command and all it's option.
You can perform the following:

man ls |col -b >lsfile

	man ls gives you the man page for ls formatted for a
screen so if you just did man ls >lsfile, you would see a lot of
stuff you don't need or want because of the markup commands
embedded in to the man page.

	When you do ls |col -b, the output is supposed to be
clean ASCII text written the way you write to write a file that
is just text.

	If you just typed man ls |col, you'd get the last screen
full of the man page rather than a series of screens that one
sees when they reach the bottom of one screen and are ready for
the next screen-full which is what you get if you pipe through
the more utility.

	So, to save ls |col -b, the last part of the command is
>lsfile or any file name your heart desires.

	You can then pick out some part you are interested in
from the file lsfile and edit lsfile until you have zapped
everything but what you wanted.

	Try man col |col -b >somefile

	Another good viewer in the unix world is called less,
yes, l e s s as in the opposite of more.  You may even read
humorous statements such as "less is more."

	The keyboard commands are quite similar to vi but you can
not write to a file, only read it.

	If you start it out as less -i, your word searches ignore
case.  This means that if what you wanted was written strangely
such as AmErIcA rather than America, your search for /america
will find it.

	I don't care fore nano much but that's mostly because
when I first learned unix shell command, vi was the editor you
were most likely to find on any unix computer.  I've tried nano
and maybe I just wasn't doing something right but speech didn't
echo key strokes except to say the current character position in
the line which is not usually that helpful.

	The one thing I do know about nano is if you find
yourself in it when you didn't want to be, control+x gets you out
without altering what you were editing.

	Unix has a plethora of engines that do interesting things
with text such as fmt which will take standard ASCII text and do
kind of like a word processor to put limits on the length of
lines and combine non-indented lines in to blocks of text that are
nicely formatted according to the right margin but not justified.

	Have fun.

martin

Jeffery Mewtamer <mewtamer@gmail.com> writes:
> and if -h doesn't work with a given command --help usually does... I
> also find piping to nano useful when I want a general overview of a
> command, but the -h output is long.
> 
> [command] -h | nano -
> 
> | nano -
> 
> Is also useful for any other non-interactive command that produces
> more output than is easily reviewed with screen review hotkeys.
> 
> Though, more to the original topic of this thread, I'm not sure if
> there's any good way of archiving this stuff... but at the same time,
> I'm not sure an archive would be all that useful. This is just my
> experience, but 9 times out of 10, typing "How do I do x at the linux
> command line" without the quotes into Firefox's address bar or
> something similar will return a mainstream tutorial that doesn't need
> any accessibility tweaks, and with how much Orca is constantly having
> to adapt to every little change in every major desktop application
> that runs under Linux, I'd have to question the value of searching an
> archive that might have mostly outdated information instead of just
> asking here, on the Orca mailing list, or on another blind linux users
> list.
> 
> --

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

