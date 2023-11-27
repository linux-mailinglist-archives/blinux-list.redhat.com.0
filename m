Return-Path: <blinux-list+bncBD36XIOOVQCRB7NHSGVQMGQERQDJINQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCC17F9BBC
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 09:31:59 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-677fc779771sf54438996d6.0
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 00:31:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701073918; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gu6wrmQbIz3i/LKvy+ux9wrqzHVbgRplXUamrSSZ4qYO87HPXeDj7WK4Xj+tzfwcHN
         xO/d1aHt5jKjqfyOiUN9SvP5CbI9/e5ZC1nQrce95xUlCHVi663sApsIZZBm1+e41Yn8
         zjp32ZZgbWz0L9tGamuFOwhFXtaz7NJOq2IQckkFZIq2KeIMZ3eQZ6aJrgZvTytGccln
         kkMh97zpcUguxIlVEcD/CFp8e4uYhhAohy49XN2/Ut0CGnVkL0O732OpPkSuKNs99wbY
         CyYJk0ErNALYoh+zrk1SxskzTt1zeqQd488spejjaEHOleXmesYYBurWc9mwtgziP4VH
         SIeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=NkaF7gjVDYs0jBC1zXfd1mrhJcGykuVQERkDT9+Jb/E=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=iT1U/P+cfi/SlyWajU3TcVugv5zZe4Mc07mYLXfT39phZT99zoE9FVnhRq+1YTMXPw
         eXrfNLHiBmz+z+SltmMBcRfUaHeR71r0U3eprUMbUeI7QsObeKXHRx1kkNV+PDonNPv0
         VsDeXZNAy0qPnpYe1XF3kqHAO/nTEeui+c7x8+thMk/pO3lSq6Eda+FwuCKbZjpilSG0
         n6Tp0URcd5iONMriusjWZtEkZCQfPQz1O9Phq5wUJqWup998H7++ySiQpUD0QvLYRJVf
         8+WqGGLWjvVqIKxxFwtCF1bNV6LYDQqubBx6SCOjXIX2KXMihPCzvDdpaBo4IxwaXOOk
         8HuQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.44 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701073918; x=1701678718;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NkaF7gjVDYs0jBC1zXfd1mrhJcGykuVQERkDT9+Jb/E=;
        b=qj+mXRSXRQ00NkwjJ6wIUj5Gh63VwEq7iFB9HTgEacycX1pHpOmM805Qr0zNsxTe3z
         WYvscfH7f7pjhlGY8MLbi3bLLNKEULzHQx2PP3qVzTlsU313H/sVjjRykqZwnLbl6+fX
         NsP8oPVG3mcnLmup64I8xgKAhdf5yP7+PMwfmfbnCqIUV+vQqRwdmJ02TDm8DHeQV0F7
         H8nVDRVLx6Mny8z/LF1ArvtYD0ZBtTrIjpoOmwCw1j7fCOsXxrlSgC44AW9Kn14FCQbt
         zgVaQrc5oVamI2VpSQKByg4vUm75kE7JZi3UULrinvBQsZ2lgBZMoYMlXvNWgbkOx1gz
         XKNg==
X-Gm-Message-State: AOJu0Yz0V427Icq1fExEcFAXHoSD3+6o2vUgBJNTgnRvnRoTCP6hdz5j
	F7lo6RwQI4RbcVs4+IkZ9veGzQ==
X-Google-Smtp-Source: AGHT+IEVHesk6iwacZtzUdby6opuL1M1FL+X+yzW/g0z13M89kYXBI1n7CMCAeIl8HzoHjOs8g2kZQ==
X-Received: by 2002:a05:6214:1396:b0:679:d4d8:1af5 with SMTP id pp22-20020a056214139600b00679d4d81af5mr11592362qvb.15.1701073918029;
        Mon, 27 Nov 2023 00:31:58 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1650:b0:67a:3bbd:90d7 with SMTP id
 f16-20020a056214165000b0067a3bbd90d7ls122720qvw.2.-pod-prod-06-us; Mon, 27
 Nov 2023 00:31:57 -0800 (PST)
X-Received: by 2002:a67:ed90:0:b0:462:8a7b:8d28 with SMTP id d16-20020a67ed90000000b004628a7b8d28mr8999718vsp.1.1701073917116;
        Mon, 27 Nov 2023 00:31:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701073917; cv=none;
        d=google.com; s=arc-20160816;
        b=BHRcqT1Y1629lPn821dr/6XncN/Beq8VtHUFVcKDN6pS6bjcLaH+VYPMbrznqhdfnH
         BBofo3sVBxqGSoL7svdCPnvBwtyZag8oCLBB9da5OoBr4x3nILEAVgzgwQUMq89MgH2w
         qtL1klD+CEH1wv9MJyWmMIdqHe53iErgj82heLteFkFUqAR5Vdouv1X5pevBQ+zd1eB7
         4m7MTl0/8OGyQ1oyW41nhQt8ZwtkBMjDq+nNuhJYVOONYs7AsGyVP0ty8YcBDarXN+Yj
         5pgr21+r67LvJzMJXWV1GB6mQaOUsZHL9agWxDhxzczqsbzRsgO8bKYVkAZgh3ayUa/v
         v0jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=szvoYMcP6cMKNtBw+yCSOv4d9ooDwro7f5R+zPlMGow=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=yjRKZm2w0corLyyUiwvuwZfK7WuPzcfPNu53ZoN/iwGtumfkKCxvC4EMTo+45DXkHR
         bqcYPQ9nfYe36G5Um7Tb5Jf1EHV+UPhnrs0anIwLDL38+4zey/qKgk99Rrm55+P1Ix5E
         Fy3v1KHncryBySGiWniIM5eKfMnK5J7VWnBF2tWXyh0jlFUE3oZEvtpck86ffkVA1tJM
         emF7vlf7wD4YZaJ0y/uq4EgUxulNKkKMci+bNqOBssY1zRPnn1pnlX4HU144/ulQMwWW
         mHj0SdvQGX44E3419Vu96Box4x4yrW+SZ211sqHXhbvDn8EuRQD+p3n8v/A0KROmWCyo
         zYQw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.44 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id u20-20020a05621411b400b0067a07e87c08si8136696qvv.280.2023.11.27.00.31.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 00:31:56 -0800 (PST)
Received-SPF: pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.44 as permitted sender) client-ip=209.85.218.44;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-107-4viCtsi7PO2z0G6sAxPjiw-1; Mon,
 27 Nov 2023 03:31:55 -0500
X-MC-Unique: 4viCtsi7PO2z0G6sAxPjiw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F0EC3C0F37B
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 08:31:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2B1782166B2C; Mon, 27 Nov 2023 08:31:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23ADC2166B26
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 08:31:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E757C3C0F37B
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 08:31:54 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-507-3AofpZYDMLypLGnUBEVq1g-1; Mon, 27 Nov 2023 03:31:52 -0500
X-MC-Unique: 3AofpZYDMLypLGnUBEVq1g-1
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a00a9c6f1e9so557856766b.3
        for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:31:51 -0800 (PST)
X-Received: by 2002:a17:906:2c4c:b0:a04:bd7c:b7f7 with SMTP id
 f12-20020a1709062c4c00b00a04bd7cb7f7mr7760791ejh.64.1701073910480; Mon, 27
 Nov 2023 00:31:50 -0800 (PST)
MIME-Version: 1.0
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
 <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com> <0ac79846-59e1-8efe-8444-7240592473ad@panix.com>
In-Reply-To: <0ac79846-59e1-8efe-8444-7240592473ad@panix.com>
From: "'Karl Wilbur' via blinux-list@redhat.com" <blinux-list@redhat.com>
Date: Mon, 27 Nov 2023 03:31:37 -0500
Message-ID: <CAMuGJSn_KmcdKHy2tB8SziLkUi7odHwk0bL09ETt2oYx0SrnPQ@mail.gmail.com>
Subject: Re: vlcrc file needed
To: Jude DaShiell <jdashiel@panix.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: karlwilbur.net
Content-Type: multipart/alternative; boundary="0000000000002bd1a0060b1e2266"
X-Original-Sender: karl@karlwilbur.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of karl@karlwilbur.net designates 209.85.218.44 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
X-Original-From: Karl Wilbur <karl@karlwilbur.net>
Reply-To: Karl Wilbur <karl@karlwilbur.net>
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

--0000000000002bd1a0060b1e2266
Content-Type: text/plain; charset="UTF-8"

I'm not sure what you mean about GitHub.

The link that I gave you goes straight to a `vlcrc` file that has 3600
lines of config option and comments that somewhat explain what the config
option does, its datatype, as well as the default value. I just checked the
link and it works.

Now, it is old and the config option may have changed, but I think it's
unlikely that it has changed much.

--
Karl Wilbur
513-322-2481
karl@karlwilbur.net

On Sun, Nov 26, 2023, 18:37 Jude DaShiell <jdashiel@panix.com> wrote:

> The github site is gone no longer exists.
> The incomplete documentation on vlcrc configuration location I have
> already read.
> If missing a vlcrc file how to get vlc to make you a basic vlcrc file that
> could then be edited would be a nice thing to know since configuration
> file format and valid contents isn't documented.  I'll try cvlc and see if
> that works.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Sun, 26 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:
>
> > This is pretty old but might be a good place to start:
> > (a GitHub repo that has someone's `vlcrc` file in it)
> > https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc
> >
> > Also, VLC docs about config file location:
> > http://www.videolan.org/support/faq.html#Config
> >
> > --
> > Karl Wilbur
> > 513-322-2481
> > karl@karlwilbur.net
> >
> > On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com> wrote:
> >
> > > What's not on that videolan website is instructions for command line
> users
> > > giving format of vlcrc and valid items that can go in that vlcrc file.
> > > I installed mpv and vlc on archlinux and have mpv working since it's
> > > better documented but not the case with vlc.
> > >
> > >
> > > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > > order." Ed Howdershelt 1940.
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "
> > > blinux-list@redhat.com" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an
> > > email to blinux-list+unsubscribe@redhat.com.
> > >
> > >
> >
> >
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--0000000000002bd1a0060b1e2266
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I&#39;m not sure what you mean about GitHub.<div dir=3D"a=
uto"><br></div><div dir=3D"auto">The link that I gave you goes straight to =
a `vlcrc` file that has 3600 lines of config option and comments that somew=
hat explain what the config option does, its datatype, as well as the defau=
lt value. I just checked the link and it works.<div dir=3D"auto"><br></div>=
<div dir=3D"auto">Now, it is old and the config option may have changed, bu=
t I think it&#39;s unlikely that it has changed much.=C2=A0<br><br><div dat=
a-smartmail=3D"gmail_signature" dir=3D"auto">--<br>Karl Wilbur<br>513-322-2=
481<br><a href=3D"mailto:karl@karlwilbur.net">karl@karlwilbur.net</a></div>=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Sun, Nov 26, 2023, 18:37 Jude DaShiell &lt;<a href=3D"mailto=
:jdashiel@panix.com">jdashiel@panix.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">The github site is gone no longer exists.<br>
The incomplete documentation on vlcrc configuration location I have<br>
already read.<br>
If missing a vlcrc file how to get vlc to make you a basic vlcrc file that<=
br>
could then be edited would be a nice thing to know since configuration<br>
file format and valid contents isn&#39;t documented.=C2=A0 I&#39;ll try cvl=
c and see if<br>
that works.<br>
<br>
<br>
-- Jude &lt;jdashiel at panix dot com&gt; &quot;There are four boxes to be =
used in<br>
defense of liberty: soap, ballot, jury, and ammo. Please use in that<br>
order.&quot; Ed Howdershelt 1940.<br>
<br>
On Sun, 26 Nov 2023, &#39;Karl Wilbur&#39; via <a href=3D"mailto:blinux-lis=
t@redhat.com" target=3D"_blank" rel=3D"noreferrer">blinux-list@redhat.com</=
a> wrote:<br>
<br>
&gt; This is pretty old but might be a good place to start:<br>
&gt; (a GitHub repo that has someone&#39;s `vlcrc` file in it)<br>
&gt; <a href=3D"https://github.com/bashwork/settings/blob/master/linux/.con=
fig/vlc/vlcrc" rel=3D"noreferrer noreferrer" target=3D"_blank">https://gith=
ub.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc</a><br>
&gt;<br>
&gt; Also, VLC docs about config file location:<br>
&gt; <a href=3D"http://www.videolan.org/support/faq.html#Config" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">http://www.videolan.org/support/faq.h=
tml#Config</a><br>
&gt;<br>
&gt; --<br>
&gt; Karl Wilbur<br>
&gt; 513-322-2481<br>
&gt; <a href=3D"mailto:karl@karlwilbur.net" target=3D"_blank" rel=3D"norefe=
rrer">karl@karlwilbur.net</a><br>
&gt;<br>
&gt; On Sun, Nov 26, 2023, 07:36 Jude DaShiell &lt;<a href=3D"mailto:jdashi=
el@panix.com" target=3D"_blank" rel=3D"noreferrer">jdashiel@panix.com</a>&g=
t; wrote:<br>
&gt;<br>
&gt; &gt; What&#39;s not on that videolan website is instructions for comma=
nd line users<br>
&gt; &gt; giving format of vlcrc and valid items that can go in that vlcrc =
file.<br>
&gt; &gt; I installed mpv and vlc on archlinux and have mpv working since i=
t&#39;s<br>
&gt; &gt; better documented but not the case with vlc.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; -- Jude &lt;jdashiel at panix dot com&gt; &quot;There are four bo=
xes to be used in<br>
&gt; &gt; defense of liberty: soap, ballot, jury, and ammo. Please use in t=
hat<br>
&gt; &gt; order.&quot; Ed Howdershelt 1940.<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups &quot;<br>
&gt; &gt; <a href=3D"mailto:blinux-list@redhat.com" target=3D"_blank" rel=
=3D"noreferrer">blinux-list@redhat.com</a>&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an<br>
&gt; &gt; email to <a href=3D"mailto:blinux-list%2Bunsubscribe@redhat.com" =
target=3D"_blank" rel=3D"noreferrer">blinux-list+unsubscribe@redhat.com</a>=
.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--0000000000002bd1a0060b1e2266--

