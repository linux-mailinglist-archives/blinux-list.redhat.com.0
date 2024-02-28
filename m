Return-Path: <blinux-list+bncBCM2V5WE3MDBBXNS7OXAMGQEBBJZGOA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id F350086A89C
	for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 07:57:34 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-42e520c4283sf9467611cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 22:57:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709103454; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8vM3TJi3iWJJ1pcwWDoX4DBrQUrxdQI6XNXNUlcLmUkE7qToabvUHJZHjgh1Z0/Vw
         vnGWeSVbju4IFd0msf0cnjGyx8R+SO9Z3HeY1JXPW3UqfqIxhuqvMUHrjd8jYX+AmSvh
         ia9n9fBRfZ8noRR3OEGRfFSgtK61vQZVKilZZW9RMemWvVU/okjmL6q//3gWXPjmRqli
         aiSeuyKRGuzvj4fM9cXlxccsHwlbKi2T6FOfqBwbHHJyncw0bU5l2StI8jd/OObOtJMW
         3Hf/DoSOSBHiJaf+DjBKa2TImqm7+I+t3hzemT22iVUo94CtPKMXlvknYzb/NTUYlzht
         jv/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :references:in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=PqIBTEJAVi3wdtOibHr2tGih381gszYCta9qwnqeUjQ=;
        fh=YW9x/k7IEZJEBIA6iqvUIik88sSrw9SNgvX8hmKCUZ8=;
        b=zfRffVntmoN61v+965cm3rGnLKtjgimbDYn8XnMFxl/kyHkZoerAtjWbHleP/xoVu2
         Wl0Msho1SN8NXckk2tSx+fgURZOtBPajN4qpSpdE2F1LN4dmzbOcpMQtIBWE1vUly7zj
         msYBtV6SUM6zVfHjAK7eKhjHgp920N/H1tqlGViGI77IAtD05/ko8jXXn2yKLuhQKMYq
         aR5tx9anjn39Iig0e9nDcE3hOEDWzsJlSR4FKALlQmGtLCLLhX0VoBGXxCkl0yQjUBYd
         /iBpAeUO1h63s/shipX+9ofn72u8xtWAuyNvwORzyF6doFMrxM1fG23M0SHnvGZi3qHu
         f3pw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709103454; x=1709708254;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:references:in-reply-to:message-id:subject:from:to:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PqIBTEJAVi3wdtOibHr2tGih381gszYCta9qwnqeUjQ=;
        b=ttOY7Az0q/694fMDAopyrbMvhX69dGPCAzkXIYeRXpAQ5nY7oF8n/nAD2RzMlsS6Fm
         V2p8awpNnAizQG8Yj+b8bPSWeEwwKIeuAHAfNfVIbS8S0c6USh8ZXrLNFREcDasH1P/m
         Pu/FAeJsYoPdLGUp7iQaMdGrjWScvj1nW/UKMDUa9A7t2N2WHM9YZxT4Zf3VdYSsiGxc
         NCRgWLxit98QOUO1eQ8kpHe7YbBtcopIaHAG/o0a8VwfdfYfp8djXMX/00rtN2MhtvpK
         FCEemB/EdnJiiU+G9WKG8VqSn7EDnbuLrYmwBmSg5BCAAG6qY5Gs6dS2qMIUD5ZpqeU3
         iP+A==
X-Forwarded-Encrypted: i=2; AJvYcCUL5UhBSeZkeRrfqkyXBlr4T2O98JiEV/TI40vVPYzIL1UCG2OkNYZWcFFDUrY9h2Z6pnGzmU/xcPN4VDsiBN9zQLi+gghOywkp
X-Gm-Message-State: AOJu0YyfiIqeWilUUqOeQ3wsE81RE4YD09ax2+/1WXkE19XlYQL8ghDx
	Uq46P9wBLjulEwuJfl0i/PsGMGeHZl/Upc//dHYeagNu4k57l9thtVgRIr8Pvv4=
X-Google-Smtp-Source: AGHT+IGHkqj+j5D1LYVfm/y7idB8ucS6rxfr5IM75CHnYvEzjs4nwRu6L4Funy+qk3s4OIKzpB0unA==
X-Received: by 2002:a05:622a:1c8:b0:42e:a842:b910 with SMTP id t8-20020a05622a01c800b0042ea842b910mr2446516qtw.9.1709103453660;
        Tue, 27 Feb 2024 22:57:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:ac4:b0:68c:3fc2:b931 with SMTP id
 g4-20020a0562140ac400b0068c3fc2b931ls143011qvi.0.-pod-prod-00-us; Tue, 27 Feb
 2024 22:57:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUJL43N8rjweaQUxRTcPzNRQ+v+R16vlxIKS9lOFupBACwy4rZJQJ/PSc6hUnl4+oBgzsvQcoV5iF33iO/h0XDc0c1vSfbCR+Qe+EYe
X-Received: by 2002:a05:6214:438a:b0:690:2069:d413 with SMTP id oh10-20020a056214438a00b006902069d413mr2299475qvb.6.1709103452675;
        Tue, 27 Feb 2024 22:57:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709103452; cv=none;
        d=google.com; s=arc-20160816;
        b=waqUJigpMUJcTmeI0SyPkF3GINJNp8o5kU19FoVr4mJh+bpXqEXbhOx4Hmr5OD/adx
         lgYo1YUofV/eKO068e6U3igKZ8uzgvr7gj1NBNCkgxBctokuZJB5JE9KIHEQnhHIpEFp
         PefX786pF0nRPuHi/3QZ5dLNQNKw9o9eLiceWcR/kUNgMEAW8wue6aqmOXOrI1YtzwoF
         p6FnVwF1cDjkSrT6wFS/A9NLQXffh8OqwljX3as0cdLphC2U6aHKuPeBqXZLnFwQ0iSv
         XpnYYhqW0mDZXmSzucVdhir9tm+wIVQp+dMNq83sWaVGkC1eCQXnUiut3pU1RmBopHs1
         aXEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=pvTKohXWNDtQ0uiGoR3ctCuWfDp415DI9Symwb9l39o=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=FMGHeC4W+jLHMm16YEXBjEj+leFngqj8NyVLwKzkGdMigkDqjWT/wc6tMMnT9jYq2k
         z4xq+Rzgg/Ok0cWCbwcNzAVwyrsTTRwcX9/W2rGHw5l1qnNUHbRRvD9Qg7M4/8I7n66L
         YITqmuM1LPyWryzo+fLrCpsUmZRVf8nFs6GHx7i3duNHuKxEsWBiVJlcEzK3ef5lMs8I
         TcaMFbsVDv/CQi/1SBIA6nW94nfYfro5kB1udveJ/mZDZaUe+P1AMXHNUE8gWJzynV1V
         5nfQWS6oHgYH7dcQPKJvtfTcv52WZakAOgJrwm+4taKSvYSIl8feXfh5uEhjyZCjZqdw
         bTgg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id m7-20020a0562141bc700b0068eda254d98si9098457qvc.29.2024.02.27.22.57.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 22:57:32 -0800 (PST)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) client-ip=185.70.43.27;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-445-XL1IiGKROJqVkltfU0xTWQ-1; Wed,
 28 Feb 2024 01:57:31 -0500
X-MC-Unique: XL1IiGKROJqVkltfU0xTWQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DF5141C04B42
	for <blinux-list@gapps.redhat.com>; Wed, 28 Feb 2024 06:57:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DC46A2166B33; Wed, 28 Feb 2024 06:57:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A358F2166B5E
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 06:57:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 477C485A588
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 06:57:30 +0000 (UTC)
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch
 [185.70.43.27]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-495-wKUGFRF7NIeHsxcCAJHtpg-1; Wed, 28 Feb 2024 01:57:27 -0500
X-MC-Unique: wKUGFRF7NIeHsxcCAJHtpg-1
Date: Wed, 28 Feb 2024 06:57:17 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Keeping Orca Talking
Message-ID: <c5f3a276-44f9-40d4-ad12-a78fbad917b9@protonmail.com>
In-Reply-To: <E1reg56-0002ET-Pr@wb5agz>
References: <E1reg56-0002ET-Pr@wb5agz>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: multipart/alternative;
 boundary="b1_R4v2JON7aCcLJbLia5Nf2iMfur2xq6iBMuqrbRJKAgo"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

This is a multi-part message in MIME format.
--b1_R4v2JON7aCcLJbLia5Nf2iMfur2xq6iBMuqrbRJKAgo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> It's amazing how quickly one can go from hero to zero in
>
> this game

I guess that=E2=80=99s what FS snapshots are for. <grin> Anything goes wron=
g? you just roll-back to the last working state and everything is intact.

Best regards

Rastislav

D=C5=88a 26. 2. 2024 o 19:52 Martin McCormick nap=C3=ADsal(a):

> I am really good at getting in my own way when it comes to
> keeping orca speaking.
>
> The system running orca is a HP Pavillion desktop which
> is about 2 years old, running debian bullseye and it sure cooks
> right along very nicely except for sound where it's just one
> thing after another.
>
> With this version of debian, I installed it from a debian
> iso image placed on a usb thumb drive and it talks if you type
> the lower-case s as soon as you hear the beep from the piezo
> buzzer on the mother board.
>
> I wanted to adjust some sound levels yesterday so I fired
> up alsamixer which I am not familiar with.  Alsamixer is not a
> GUI application as such as uses a curses-based terminal interface
> and can be accessed via command-line terminal.
>
> I logged in to mate's terminal and commanded alsamixer to
> start using card 0 or -c 0.
>
> I am not sure what I did but about 2 or 3 key strokes in
> to the session, I typed the Enter key and, poof! voice output was
> gone.
>
> I finally logged in to that system from another Linux box
> in text-based command-line mode, downloaded a backup of /var and
> selected var/lib/alsa/asound.state which had that file in it.
>
> After copying /var/lib/alsa/asound.state from the backup,
> I did
>
> sudo alsactl store which seems to have stored this older version
> of asound.state then I rebooted.
>
> I was able to log in as the login still talked but as
> soon as I entered the password, everything went silent again.
>
> I finally got on the Linux box that has no GUI and ssh'd
> into the gnome system and then called alsamixer as me and that's
> when I realized more how this all works.
>
> One is supposed to press F3 to be in the playback setup
> mode.  Apparently the function keys like F3 send a terminal code
> sequence that is interpreted as F3 and then I noticed that the
> volume slider for Master volume was all the way down to 0.
>
> The Up and Down arrows move that slider so I moved it up
> and finally my orca console started speaking again.
>
> One then presses Escape once and alsamixer closes.
>
> Is there a faster and better way I could have done this?
>
> If I hadn't had a second Linux system, I'd still be
> messing with it and the curses would be more than just in the
> command-line interface.
>
> It's amazing how quickly one can go from hero to zero in
> this game but finally I seem to have the talking orca terminal
> back.
>
> Martin
>
> --
> You received this message because you are subscribed to the Google Groups
> ["blinux-list@redhat.com"](mailto:blinux-list@redhat.com)
> group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to
> blinux-list+unsubscribe@redhat.com
> .

=E2=80=8B

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1_R4v2JON7aCcLJbLia5Nf2iMfur2xq6iBMuqrbRJKAgo
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <div class=3D"markdown-here-wrapper" data-md-url=3D"" style=3D"">
      <blockquote
style=3D"margin: 1.2em 0px;border-left: 4px solid rgb(51, 117, 221); paddin=
g: 0px 1em; color: rgb(119, 119, 119); quotes: none;">
        <pre
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;font-size: =
1em; line-height: 1.2em;margin: 1.2em 0px;"><code
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;margin: 0px=
 0.15em; padding: 0px 0.3em; white-space: pre-wrap; font-weight: 550; backg=
round-color: rgba(119, 119, 119, 0.3); border-radius: 3px; display: inline;=
white-space: pre; overflow: auto; border-radius: 3px; border: 1px solid rgb=
(204, 204, 204); padding: 0.5em 0.7em; display: block;">It's amazing how qu=
ickly one can go from hero to zero in
</code></pre>
        <p style=3D"margin: 0px 0px 1.2em !important;">this game</p>
      </blockquote>
      <p style=3D"margin: 0px 0px 1.2em !important;">I guess that=E2=80=99s=
 what
        FS snapshots are for. &lt;grin&gt; Anything goes wrong? you just
        roll-back to the last working state and everything is intact.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Best regards</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Rastislav</p>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <div class=3D"markdown-here-exclude">
        <div class=3D"moz-cite-prefix">D=C5=88a 26. 2. 2024 o 19:52 Martin
          McCormick nap=C3=ADsal(a):<br>
        </div>
      </div>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <div class=3D"markdown-here-exclude">
        <blockquote type=3D"cite" cite=3D"mid:E1reg56-0002ET-Pr@wb5agz">
          <pre class=3D"moz-quote-pre" wrap=3D"">I am really good at gettin=
g in my own way when it comes to
keeping orca speaking.

The system running orca is a HP Pavillion desktop which
is about 2 years old, running debian bullseye and it sure cooks
right along very nicely except for sound where it's just one
thing after another.

With this version of debian, I installed it from a debian
iso image placed on a usb thumb drive and it talks if you type
the lower-case s as soon as you hear the beep from the piezo
buzzer on the mother board.

I wanted to adjust some sound levels yesterday so I fired
up alsamixer which I am not familiar with.  Alsamixer is not a
GUI application as such as uses a curses-based terminal interface
and can be accessed via command-line terminal.

I logged in to mate's terminal and commanded alsamixer to
start using card 0 or -c 0.

I am not sure what I did but about 2 or 3 key strokes in
to the session, I typed the Enter key and, poof! voice output was
gone.

I finally logged in to that system from another Linux box
in text-based command-line mode, downloaded a backup of /var and
selected var/lib/alsa/asound.state which had that file in it.

After copying /var/lib/alsa/asound.state from the backup,
I did

sudo alsactl store which seems to have stored this older version
of asound.state then I rebooted.

I was able to log in as the login still talked but as
soon as I entered the password, everything went silent again.

I finally got on the Linux box that has no GUI and ssh'd
into the gnome system and then called alsamixer as me and that's
when I realized more how this all works.

One is supposed to press F3 to be in the playback setup
mode.  Apparently the function keys like F3 send a terminal code
sequence that is interpreted as F3 and then I noticed that the
volume slider for Master volume was all the way down to 0.

The Up and Down arrows move that slider so I moved it up
and finally my orca console started speaking again.

One then presses Escape once and alsamixer closes.

Is there a faster and better way I could have done this?

If I hadn't had a second Linux system, I'd still be
messing with it and the curses would be more than just in the
command-line interface.

It's amazing how quickly one can go from hero to zero in
this game but finally I seem to have the talking orca terminal
back.

Martin

--
You received this message because you are subscribed to the Google Groups <=
a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:blinux-list@redhat.com">"b=
linux-list@redhat.com"</a> group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:blinux-list+un=
subscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.

</pre>
        </blockquote>
      </div>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <div
title=3D"MDH:PHA+Jmd0OyAmbmJzcDsmbmJzcDsmbmJzcDsgSXQncyBhbWF6aW5nIGhvdyBxdW=
lja2x5IG9uZSBj
YW4gZ28gZnJvbSBoZXJvIHRvIHplcm8gaW48YnI+dGhpcyBnYW1lPGJyPjxicj5JIGd1ZXNzIHR=
o
YXQncyB3aGF0IEZTIHNuYXBzaG90cyBhcmUgZm9yLiBcJmx0O2dyaW5cJmd0OyBBbnl0aGluZyB=
n
b2VzIHdyb25nPyB5b3UganVzdCByb2xsLWJhY2sgdG8gdGhlIGxhc3Qgd29ya2luZyBzdGF0ZSB=
h
bmQgZXZlcnl0aGluZyBpcyBpbnRhY3QuPGJyPjxicj5CZXN0IHJlZ2FyZHM8YnI+PGJyPlJhc3R=
p
c2xhdjxicj48YnI+PC9wPjxkaXYgY2xhc3M9Im1vei1jaXRlLXByZWZpeCI+RMWIYSAyNi4gMi4=
g
MjAyNCBvIDE5OjUyIE1hcnRpbiBNY0Nvcm1pY2sgbmFww61zYWwoYSk6PGJyPjwvZGl2PjxibG9=
j
a3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDpFMXJlZzU2LTAwMDJFVC1QckB3YjVhZ3oiPjx=
w
cmUgY2xhc3M9Im1vei1xdW90ZS1wcmUiIHdyYXA9IiI+SSBhbSByZWFsbHkgZ29vZCBhdCBnZXR=
0
aW5nIGluIG15IG93biB3YXkgd2hlbiBpdCBjb21lcyB0bwprZWVwaW5nIG9yY2Egc3BlYWtpbmc=
u
CgoJVGhlIHN5c3RlbSBydW5uaW5nIG9yY2EgaXMgYSBIUCBQYXZpbGxpb24gZGVza3RvcCB3aGl=
j
aAppcyBhYm91dCAyIHllYXJzIG9sZCwgcnVubmluZyBkZWJpYW4gYnVsbHNleWUgYW5kIGl0IHN=
1
cmUgY29va3MKcmlnaHQgYWxvbmcgdmVyeSBuaWNlbHkgZXhjZXB0IGZvciBzb3VuZCB3aGVyZSB=
p
dCdzIGp1c3Qgb25lCnRoaW5nIGFmdGVyIGFub3RoZXIuCgoJV2l0aCB0aGlzIHZlcnNpb24gb2Y=
g
ZGViaWFuLCBJIGluc3RhbGxlZCBpdCBmcm9tIGEgZGViaWFuCmlzbyBpbWFnZSBwbGFjZWQgb24=
g
YSB1c2IgdGh1bWIgZHJpdmUgYW5kIGl0IHRhbGtzIGlmIHlvdSB0eXBlCnRoZSBsb3dlci1jYXN=
l
IHMgYXMgc29vbiBhcyB5b3UgaGVhciB0aGUgYmVlcCBmcm9tIHRoZSBwaWV6bwpidXp6ZXIgb24=
g
dGhlIG1vdGhlciBib2FyZC4KCglJIHdhbnRlZCB0byBhZGp1c3Qgc29tZSBzb3VuZCBsZXZlbHM=
g
eWVzdGVyZGF5IHNvIEkgZmlyZWQKdXAgYWxzYW1peGVyIHdoaWNoIEkgYW0gbm90IGZhbWlsaWF=
y
IHdpdGguICBBbHNhbWl4ZXIgaXMgbm90IGEKR1VJIGFwcGxpY2F0aW9uIGFzIHN1Y2ggYXMgdXN=
l
cyBhIGN1cnNlcy1iYXNlZCB0ZXJtaW5hbCBpbnRlcmZhY2UKYW5kIGNhbiBiZSBhY2Nlc3NlZCB=
2
aWEgY29tbWFuZC1saW5lIHRlcm1pbmFsLgoKCUkgbG9nZ2VkIGluIHRvIG1hdGUncyB0ZXJtaW5=
h
bCBhbmQgY29tbWFuZGVkIGFsc2FtaXhlciB0bwpzdGFydCB1c2luZyBjYXJkIDAgb3IgLWMgMC4=
K
CglJIGFtIG5vdCBzdXJlIHdoYXQgSSBkaWQgYnV0IGFib3V0IDIgb3IgMyBrZXkgc3Ryb2tlcyB=
p
bgp0byB0aGUgc2Vzc2lvbiwgSSB0eXBlZCB0aGUgRW50ZXIga2V5IGFuZCwgcG9vZiEgdm9pY2U=
g
b3V0cHV0IHdhcwpnb25lLgoKCUkgZmluYWxseSBsb2dnZWQgaW4gdG8gdGhhdCBzeXN0ZW0gZnJ=
v
bSBhbm90aGVyIExpbnV4IGJveAppbiB0ZXh0LWJhc2VkIGNvbW1hbmQtbGluZSBtb2RlLCBkb3d=
u
bG9hZGVkIGEgYmFja3VwIG9mIC92YXIgYW5kCnNlbGVjdGVkIHZhci9saWIvYWxzYS9hc291bmQ=
u
c3RhdGUgd2hpY2ggaGFkIHRoYXQgZmlsZSBpbiBpdC4KCglBZnRlciBjb3B5aW5nIC92YXIvbGl=
i
L2Fsc2EvYXNvdW5kLnN0YXRlIGZyb20gdGhlIGJhY2t1cCwKSSBkaWQKCnN1ZG8gYWxzYWN0bCB=
z
dG9yZSB3aGljaCBzZWVtcyB0byBoYXZlIHN0b3JlZCB0aGlzIG9sZGVyIHZlcnNpb24Kb2YgYXN=
v
dW5kLnN0YXRlIHRoZW4gSSByZWJvb3RlZC4KCglJIHdhcyBhYmxlIHRvIGxvZyBpbiBhcyB0aGU=
g
bG9naW4gc3RpbGwgdGFsa2VkIGJ1dCBhcwpzb29uIGFzIEkgZW50ZXJlZCB0aGUgcGFzc3dvcmQ=
s
IGV2ZXJ5dGhpbmcgd2VudCBzaWxlbnQgYWdhaW4uCgoJSSBmaW5hbGx5IGdvdCBvbiB0aGUgTGl=
u
dXggYm94IHRoYXQgaGFzIG5vIEdVSSBhbmQgc3NoJ2QKaW50byB0aGUgZ25vbWUgc3lzdGVtIGF=
u
ZCB0aGVuIGNhbGxlZCBhbHNhbWl4ZXIgYXMgbWUgYW5kIHRoYXQncwp3aGVuIEkgcmVhbGl6ZWQ=
g
bW9yZSBob3cgdGhpcyBhbGwgd29ya3MuCgoJT25lIGlzIHN1cHBvc2VkIHRvIHByZXNzIEYzIHR=
v
IGJlIGluIHRoZSBwbGF5YmFjayBzZXR1cAptb2RlLiAgQXBwYXJlbnRseSB0aGUgZnVuY3Rpb24=
g
a2V5cyBsaWtlIEYzIHNlbmQgYSB0ZXJtaW5hbCBjb2RlCnNlcXVlbmNlIHRoYXQgaXMgaW50ZXJ=
w
cmV0ZWQgYXMgRjMgYW5kIHRoZW4gSSBub3RpY2VkIHRoYXQgdGhlCnZvbHVtZSBzbGlkZXIgZm9=
y
IE1hc3RlciB2b2x1bWUgd2FzIGFsbCB0aGUgd2F5IGRvd24gdG8gMC4KCglUaGUgVXAgYW5kIER=
v
d24gYXJyb3dzIG1vdmUgdGhhdCBzbGlkZXIgc28gSSBtb3ZlZCBpdCB1cAphbmQgZmluYWxseSB=
t
eSBvcmNhIGNvbnNvbGUgc3RhcnRlZCBzcGVha2luZyBhZ2Fpbi4KCglPbmUgdGhlbiBwcmVzc2V=
z
IEVzY2FwZSBvbmNlIGFuZCBhbHNhbWl4ZXIgY2xvc2VzLgoKCUlzIHRoZXJlIGEgZmFzdGVyIGF=
u
ZCBiZXR0ZXIgd2F5IEkgY291bGQgaGF2ZSBkb25lIHRoaXM/CgoJSWYgSSBoYWRuJ3QgaGFkIGE=
g
c2Vjb25kIExpbnV4IHN5c3RlbSwgSSdkIHN0aWxsIGJlCm1lc3Npbmcgd2l0aCBpdCBhbmQgdGh=
l
IGN1cnNlcyB3b3VsZCBiZSBtb3JlIHRoYW4ganVzdCBpbiB0aGUKY29tbWFuZC1saW5lIGludGV=
y
ZmFjZS4KCglJdCdzIGFtYXppbmcgaG93IHF1aWNrbHkgb25lIGNhbiBnbyBmcm9tIGhlcm8gdG8=
g
emVybyBpbgp0aGlzIGdhbWUgYnV0IGZpbmFsbHkgSSBzZWVtIHRvIGhhdmUgdGhlIHRhbGtpbmc=
g
b3JjYSB0ZXJtaW5hbApiYWNrLgoKTWFydGluCgotLQpZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWd=
l
IGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJibGludXg=
t
bGlzdEByZWRoYXQuY29tIiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGF=
u
ZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBibGludXg=
t
bGlzdCt1bnN1YnNjcmliZUByZWRoYXQuY29tLgoKPC9wcmU+PC9ibG9ja3F1b3RlPg=3D=3D"
        aria-hidden=3D"true"
style=3D"height:0;width:0;max-height:0;max-width:0;overflow:hidden;font-siz=
e:0;padding:0;margin:0;">=E2=80=8B</div>
    </div>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1_R4v2JON7aCcLJbLia5Nf2iMfur2xq6iBMuqrbRJKAgo--

