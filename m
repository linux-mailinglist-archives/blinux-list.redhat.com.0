Return-Path: <blinux-list+bncBCD3RKH4ZIBBBD4I6S6AMGQE3KTWCOA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD49A24194
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 18:10:43 +0100 (CET)
Received: by mail-ed1-f72.google.com with SMTP id 4fb4d7f45d1cf-5dbaaed8aeesf2660637a12.1
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 09:10:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738343441; cv=pass;
        d=google.com; s=arc-20240605;
        b=gAI9UifqnOxOB46nlnZerqTKL719sD94w9IPxVIo7DHxauHI2Hg9KZEDFnFldhEPxK
         vwGYGUBB3HG+alqJI9HgZMX9E0qUOcZUi8olXrtFhxmI6cloLPMe5Rv+8zupR44u5Va8
         40ioRLyHg4shwv8IkTLQmn3X9xJeGJtEIRJ6np8+hQ9ZC3u1zjF1mOfm+IAVwpcgaLab
         XNxIO1f2F+NenbF81kNlUfm+DO2aS9yqoQ3jqaaRTQxB4RZ2z+AW+Bx/uNXQ6luH5ARr
         CZBbybwYKvrXob2q+OxrQnolAeCNpg81KyjPd7l9Ag4LbqzcUrYuLdlXTE/7XCRvRdE6
         P4Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=jxbJV2nqOQ9+3XPQr/ZtL4+KU9YJ0KnEt3pI5XqI1EA=;
        fh=PAmMYq6s+5OmZJbDxSqy3D2d+ha98U2Q/x+05olAre8=;
        b=WMDu2s0p/5XRcKLaC5OO4RvQLp/RZOQxWvNavhAThnqG8nCQ5J/eBAUFRMnil8DDBR
         icBnKliyE8wW9U6OgDGRSSm4EBgayO84Yg8u2iGIuscblqe9MGcls5IEU483BE7w5sv0
         /iDT1O52/mHd0NMVuDr+0XfEONzwudLySZZEca879o6y2CXyGYiLxfM5qXjCmZOEo96H
         6M5HwQkUyl/6UGn3G+xsNHIHSOO2W/GbTbnEqpdnYaYJjrEw/ZQZHI4VfPLtVbxYW7VD
         wVFTUwg5NqbrL+4GR5m0TQee+pCKgR1H8CtfWD2eCPN5OPKAfnzUN4J9qZNWFCNqspk9
         vGYw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738343441; x=1738948241;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jxbJV2nqOQ9+3XPQr/ZtL4+KU9YJ0KnEt3pI5XqI1EA=;
        b=Yy59UkRPVMO18f36bvsjIH+OuF+KIW59/1V1usXPSoYJ96Q3V2d8V4i9uqXgOJsbrZ
         Fc/CXcbQ4cPg1GHb7w0fbPi3qspdd2X7DUE1ja73bJRoy+b/TIXeev8zXOD7wqSGxDkV
         uSKJKs4lJleJ5CPFR3MzWGv/FQNsfzn+Wq4WCBptioqzRYB9ZlUMRKCwH8Yo/WFxYbcf
         52Nnq84zF1qvnH3t1GLY8kIG8Rbm90e3OfmHfiFCId6nLUrZG1M03CzEH7jyAs4nG75I
         RfX04Bab1Qsrj2XpB5ykLfrp9JSKEzIEk010BI7Jr2UaU8Fhd/P6C0QPZsWEx915SkjW
         7vgg==
X-Forwarded-Encrypted: i=2; AJvYcCWc8y5uFclsylNE+fju1KIunBnnhQg+Au1VY9c8Qy4mDt3dj5NZUx82dPLUPV8Gc4QXYf/qYg==@lfdr.de
X-Gm-Message-State: AOJu0YzsK3Vr184vaHvY/xZZjS3Fj6wzhw14f7FxIbjoWdIGntbmTadB
	XAtohCwN5xnMC18sbHE0AODxM88O65pcL2pbVLA1e6bnvcu42xngptTKXnge+i4=
X-Google-Smtp-Source: AGHT+IG1YyzmDt9j+M5ZWtLCKfN1/+WgaQp9wO6BZm16snjr/vELH+KH/Pf1+0QE9aEiL/7zkpivsg==
X-Received: by 2002:a05:6402:2390:b0:5dc:71f6:9710 with SMTP id 4fb4d7f45d1cf-5dc71f6989dmr6033698a12.11.1738343441265;
        Fri, 31 Jan 2025 09:10:41 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:aa7:d29a:0:b0:5d3:eaf5:6da7 with SMTP id 4fb4d7f45d1cf-5dc6f22f848ls875613a12.0.-pod-prod-03-eu;
 Fri, 31 Jan 2025 09:10:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWc/kZMvAlvkV1/Pos9oCVqE8Pu81KT4+eqy5WxRTcmVEjJtgEbtzGQpRfDP1Fhpd3ryjTh0eM2ZvxRXw==@gapps.redhat.com
X-Received: by 2002:a05:6402:34c3:b0:5d0:81af:4a43 with SMTP id 4fb4d7f45d1cf-5dc5e6dd167mr14038196a12.0.1738343438144;
        Fri, 31 Jan 2025 09:10:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738343438; cv=none;
        d=google.com; s=arc-20240605;
        b=EHGxwqbwDpacTvabjLko6ZPayorE4AqRokHSJpZ4mFGnhNoe5CHpaUAINH8PedtSwW
         kpHL/C1ceUXXznn2Qf16uV0u0SX2UiAWDwxcnJfdOuh8Q/dDpp4kmEryo8yhj46YWB1W
         QFvIB4d98EdVLgdRbkG0TKCdrah8k4a3RYWexQqF699fHjSvhcLhKuD5lW/jYpzJlkJh
         xCZ3TRH56Y88qnzWD3OvKh10LHV20sHBxaSH4TTvbnZ1NSl+VFyXOsy0fqtL9SVvdu8B
         s+hQS/9lkdPrJ3wF/UitQr9CpwSR9z6C6w6LIk795lKAA3bCMuFzVukHku7x2o4zsQjf
         ABLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=JHKd1aN3qsxXdy3s4WKzW3rGuK6lY88itMUhOPYTxls=;
        fh=CgPSe0AE6Gi4hqRc7/zzqD/TZ5wTamGMR3O2X0oezn8=;
        b=IPbH0W9N9tGRZZwEEs6kVU5xeDgsCjcTh9jERaGZnEt+4qTifHnO9+O4lvXyZgTouu
         w/g217crPSvLKxx+sfzgbJmH+uCXyEOs34cqJf5bNS5mgaSsW/b5FD3LJMifRSxiz3N2
         lbeNC6ApDhssFj0dFJCdpNpkc/LJqPb1ouTyJjS0m4wvqWCQ/5/+r7hbFI4qEO9BL5Hq
         Yyp8km4y5phyYaT4kSHnyALfqOZbv9d3c6nKY9tFJeMmwnBWB9LxMCv87owwF9tsCjdb
         OIfNTIvarXxVl7i+pQiVU9vLeNTjbXx7PzX0Zrb8dpDO5hzFwvuTO0C/08QO4E0x9XJj
         n2Ng==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5dc723ce379si3500148a12.53.2025.01.31.09.10.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 09:10:38 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) client-ip=209.85.218.51;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-468-71TU1FvNNleycW8CBU2nTg-1; Fri,
 31 Jan 2025 12:10:31 -0500
X-MC-Unique: 71TU1FvNNleycW8CBU2nTg-1
X-Mimecast-MFC-AGG-ID: 71TU1FvNNleycW8CBU2nTg
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 34E601800374
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 17:10:30 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 30DE4180099C; Fri, 31 Jan 2025 17:10:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2DA4A1800267
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 17:10:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6F25218009D1
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 17:10:29 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-82-tr9oMfQSOJi3lNpdRVhjdQ-1; Fri, 31 Jan 2025 12:10:12 -0500
X-MC-Unique: tr9oMfQSOJi3lNpdRVhjdQ-1
X-Mimecast-MFC-AGG-ID: tr9oMfQSOJi3lNpdRVhjdQ
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso451714366b.1
        for <blinux-list@redhat.com>; Fri, 31 Jan 2025 09:10:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUAMCKLucuufEhawmT9/C5HeUHYWnjB/f802624P4+D2TYIcvJ7kly4j0tNEG8eQpAs2V80Zdlcte7J+w==@redhat.com
X-Gm-Gg: ASbGncu2q8jgYnxdf2VXrvC7MmHaKl/jkqjwTTBvTYFggoTjirHpsiFMMxoSZTtIS/U
	owZTK3lQ8pFnILsmcdfzUlY+aP5DwC8J1TdkPD0lccKheJXOdc5GdMI8gZBfLmnRPFYkR9gE7Ll
	SABNqzwU5OqTHMDWzZOjdMBsJURx+H+Q==
X-Received: by 2002:a17:907:3f8f:b0:ab6:61cb:ced2 with SMTP id
 a640c23a62f3a-ab6cfcc6f27mr1301520066b.9.1738343411065; Fri, 31 Jan 2025
 09:10:11 -0800 (PST)
MIME-Version: 1.0
References: <Z5xIBQ5itO0f071J@panix.com> <Pine.LNX.4.64.2501310351040.2129007@users.shellworld.net>
 <Z5zsPmVhEhvMGaTL@panix.com> <6aa20dc0-b64b-f866-090a-a65e80f3dc05@hubert-humphrey.com>
In-Reply-To: <6aa20dc0-b64b-f866-090a-a65e80f3dc05@hubert-humphrey.com>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Fri, 31 Jan 2025 17:11:17 +0000
X-Gm-Features: AWEUYZnLRBxRNKpU5nf6MqWGoxSs3hHNl1QmDWWGNMx2QOSHHfwWunS3hwJOjsc
Message-ID: <CAO2sX33D2BGvtCvi55_UeMrDuBx1xePHfDx-Ycqvn8KPd8CrFQ@mail.gmail.com>
Subject: Re: more gui obfuscation
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Rudy Vener <salt@panix.com>, 
	Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: D5mrzXHIsn-25VQ8ruhiCbQdFhQb-5RLvm_cPVeKYxQ_1738343411
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: C5KJVmq4NPR56N6BnqjRmOGYOxYcR5N1kStip3TtLBo_1738343430
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="00000000000083ae32062d039d56"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--00000000000083ae32062d039d56
Content-Type: text/plain; charset="UTF-8"

Is there a reason to have yt-dlp convert extracted audio to .wav instead of
just leaving the extracted audio in its original .m4a(a tiny fraction of
YouTube content) or .opus(the vast majority of YouTube content)  formats? I
mostly use yt-dlp for batch downloading entire channels for offline
listening on my Senseplayer, and other than having to rename .opus files to
.aac, have yet to have a problem with playing downloaded files since I
added the option to extract audio to my

~/.config/yt-dlp/config

file, and I would expect mpv to be less picky about file extensions.
Converting to .wav just seems like a waste of disc space(perhaps no an
issue for individual files you plan to listen and delete, but adds up if
batch downloading from a newly discovered creator with hundreds of videos
in their backlog), and conversion to an obsolete lossy format for archival
just seems bizarre.

And incase anyone finds it useful, here's the contents of my
~/.config/yt-dlp/config:

-o "%(title)s.%(ext)s" -x --cookies-from-browser firefox

the -o  and what follows prompts yt-dlp to save downloads with the
title of the video and the file extension, the default
behavior gums up the filenames with the gibberish Google uses to give
each video a unique ID. the -x tells yt-dlp to extract audio without
doing further conversion or saving the original video file, which both
greatly reduces disk space requirements when downloading whole
channels and saves the hassle of manually extracting audio afterward,
and the bit about cookies cuts down on downloads failing due to
Google's anti-bot measures. And having all of this in the config file
means I can just invoke

yt-dlp [url]

at the command line.

Though, if anyone wants to suggest other useful things to put in my
config file, I would love to hear them.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--00000000000083ae32062d039d56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is there a reason to have yt-dlp convert extracted au=
dio to .wav instead of just leaving the extracted audio in its original .m4=
a(a tiny fraction of YouTube content) or .opus(the vast majority of YouTube=
 content)=C2=A0 formats? I mostly use yt-dlp for batch downloading entire c=
hannels for offline listening on my Senseplayer, and other than having to r=
ename .opus files to .aac, have yet to have a problem with playing download=
ed files since I added the option to extract audio to my</div><div><br></di=
v><div>~/.config/yt-dlp/config</div><div><br></div><div>file, and I would e=
xpect mpv to be less picky about file extensions. Converting to .wav just s=
eems like a waste of disc space(perhaps no an issue for individual files yo=
u plan to listen and delete, but adds up if batch downloading from a newly =
discovered creator with hundreds of videos in their backlog), and conversio=
n to an obsolete lossy format for archival just seems bizarre.</div><div><b=
r></div><div>And incase anyone finds it useful, here&#39;s the contents of =
my ~/.config/yt-dlp/config:</div><div><br></div><div><pre>-o &quot;%(title)=
s.%(ext)s&quot; -x --cookies-from-browser firefox<br><br></pre><pre>the -o =
 and what follows prompts yt-dlp to save downloads with the title of the vi=
deo and the file extension, the default         behavior gums up the filena=
mes with the gibberish Google uses to give each video a unique ID. the -x t=
ells yt-dlp to extract audio without doing further conversion or saving the=
 original video file, which both greatly reduces disk space requirements wh=
en downloading whole channels and saves the hassle of manually extracting a=
udio afterward, and the bit about cookies cuts down on downloads failing du=
e to Google&#39;s anti-bot measures. And having all of this in the config f=
ile means I can just invoke<br><br></pre><pre>yt-dlp [url]<br><br></pre><pr=
e>at the command line.<br><br></pre><pre>Though, if anyone wants to suggest=
 other useful things to put in my config file, I would love to hear them.<b=
r></pre></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--00000000000083ae32062d039d56--

