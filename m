Return-Path: <blinux-list+bncBD36XIOOVQCRBKOXSKVQMGQEMNZGHXY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FEE7FA355
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 15:46:03 +0100 (CET)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-1f4ddfe6fe1sf5507584fac.1
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 06:46:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701096362; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y1S/j9LVSZrZFKGwhc5PjsRYmvk2A55PX8koaQfjqfElMvMMBy+Tnce+NPlT5IEmD2
         TWLFWeJaqDz8wMZWMDmd1JNNQSEk3GO2to8kvcIz/wSJCCH/M2gSKk7yyJzLDz+guW3O
         +fyosS0HJEtCyWW0bMcR2ZfEsRa4RVXPUyt+gPoWlPbgpRfLj/7MCcrU5WnAAHv7JMPa
         Ggdzd0WrEcuII2kOde47OI3Ae7nHwo4Goy0MJTTcKLXCuc2T14b/f3QQdLkutokKgkei
         wkk4KMI6Dy4uBIm5FwjEj7ur9ta8FIauK2//ar4oSlLOCYe7qOBHjRoWeot2wJdfN+Py
         rOjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=QClwqnfPKRhzLZAqM9F3A6hgvU8H+++efgfXNhMjcMQ=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=Rm4sjjne8mAPTwfYuQjayvcc6JW/5sHtax52K6xIlS21uaN/i/zLm9Hz/UNWUzRYOj
         RaikSqBrCVEoHglFT02xa4wkYceVFMlz5k1BoTXBjwJ5kLNNWz3sJcM+IxSizaQZwmfS
         5PZmf8XNgD7XYutfNKcQ42KS3RYumv52Dv8Di1lSx8K4s9MkgYYj4vVgWoTTgQ4os/Vr
         B05lXQKdIkcFXb59bbn0GRlA9j0ebbvbQNFxL0SQUljwQkgJ1qqHflthZYMDa8qhob58
         snmN75hDUPaT+7aBn6hvJ9NN+fxIeq+TQnM+MS7WA+YakxOy4T1PrKp/Ku6Mh+dNX3Uk
         9Nsw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.51 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701096362; x=1701701162;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QClwqnfPKRhzLZAqM9F3A6hgvU8H+++efgfXNhMjcMQ=;
        b=gjz8IZ9vwy7OmgckwmuU+Ez3UpKnUX3Lf/hDrgu6aDNVbzu9jB3JUGhBg2VwXycIwK
         PRQiwsGMwHHZByUgcKRjr+yhFuUkR+ERCA0Dtdy9tdbLOZW2S/ma//9HLdSNckceEPpW
         /DxlbbG6YGxySlumWmIz8kHPqwI5GigcgnH1cvEaOoBPQSIevi+cqZF+OZ+YYIl478KA
         sM0DHLHVNc7O4zqc42aqpjL10RWXKld2W5EjXySEERrH/gIzrc2Y5dMEn5z0S7Mhujst
         MBscDLVW7hlLjqs/1zMD9I5lFwpV2uX91NuYldRRUfDw3wW4AneP9BvVh14egYkfzkBI
         k5ew==
X-Gm-Message-State: AOJu0Yx66R0vGRqSWSQfnYu26wOQjiD2n2/XDKR+2SWLmWuBDIJGOer0
	8Jxrh1Qt305J4/pyNPyx7W0szg==
X-Google-Smtp-Source: AGHT+IH4XIKO47AOEfzf6xcyfJLmwHdV2ovv3bP2cwcXefy7orYDN9VkHnqesNH0pcZF3SiXeU7Czw==
X-Received: by 2002:a05:6870:c18a:b0:1fa:511:ff40 with SMTP id h10-20020a056870c18a00b001fa0511ff40mr13679409oad.21.1701096362016;
        Mon, 27 Nov 2023 06:46:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:178e:b0:423:7e09:4f05 with SMTP id
 s14-20020a05622a178e00b004237e094f05ls276067qtk.2.-pod-prod-08-us; Mon, 27
 Nov 2023 06:46:01 -0800 (PST)
X-Received: by 2002:ac8:720c:0:b0:423:b14f:cda6 with SMTP id a12-20020ac8720c000000b00423b14fcda6mr4413376qtp.66.1701096361133;
        Mon, 27 Nov 2023 06:46:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701096361; cv=none;
        d=google.com; s=arc-20160816;
        b=wMiEVMIHySlXPR725NloB6aeP+00Mc/g5VBSN2cbPZ4OhU8BGVPG5GT+8C4z7UqR3A
         Kg67FkJl20SMpPib/xDwez5A/p5+68B2887BSO1VtAM32IJmTQKfT+zp+NRIF9y7lgGa
         VBYxNJteJe9VJmu688g3RPqMwFfXIc/iULIPFY0pnIWp5cOZhnQ5wfX5AOJEWmgJF0S+
         CKFkyZTPZH5NTDNU1i9NlOPzVkzRIcNrCxvj5Q1XYaOnlJGmQb29VyWidRmO4/vAZ5ZV
         4sKaP65joDV6VYShSC2ZMhjO99R0qmPp3DHOEhIBiCQoqmJbL6B777tzZECyBJdWRuN8
         sxyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=SfSnpTD6GRtBUbZEMbzIHAz3VmLXnd0PsDu6hbm7TGU=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=qiazsFJs7o6iVjYLMmFN8xA/tHm3ESRbIm/7s/M3xr+wa9HXmRkmeGlTr7+3DXppl3
         8z/u9hzf+uR0RiQnSEeRfPGi/cqiQXL1IZDBBdmvRqlHjSVrHfcEM3t+7pgmVvzlpeSs
         tOc4stqjdbW0nrCeS9bJGcL9ni0mg6XxbqJwLwUMxbc4ZXuUhpNRTP91BXcGkLLnBqIW
         8UQ8Hqm9x+ZgXcHGC4+DilEa4aWtVsyPN89sFby/WzVu8fcGteacZa0HFmbWFiM2suMv
         2IY0izt1+VbSFpGIr0Uykxduwol/ONOGpGlWnJ+DidBOPcQO6jv6d23GQ2OwNbXPtOaJ
         UJZw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.51 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id n21-20020ac85a15000000b004236e73fa79si9104662qta.639.2023.11.27.06.46.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 06:46:00 -0800 (PST)
Received-SPF: pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.51 as permitted sender) client-ip=209.85.218.51;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-YWCc8na-PaeJ3cXvhUaA2Q-1; Mon, 27 Nov 2023 09:45:59 -0500
X-MC-Unique: YWCc8na-PaeJ3cXvhUaA2Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CB4D811E82
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 14:45:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 191DF20268D3; Mon, 27 Nov 2023 14:45:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1135720268D2
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 14:45:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9D6138117EB
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 14:45:58 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-605-6SWr1OnkNJWLtGGQnaeS3A-1; Mon, 27 Nov 2023 09:45:56 -0500
X-MC-Unique: 6SWr1OnkNJWLtGGQnaeS3A-1
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a002562bd8bso824247966b.0
        for <blinux-list@redhat.com>; Mon, 27 Nov 2023 06:45:55 -0800 (PST)
X-Received: by 2002:a17:906:15b:b0:a00:1c10:f94e with SMTP id
 27-20020a170906015b00b00a001c10f94emr12942485ejh.3.1701096354744; Mon, 27 Nov
 2023 06:45:54 -0800 (PST)
MIME-Version: 1.0
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
 <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com>
 <0ac79846-59e1-8efe-8444-7240592473ad@panix.com> <CAMuGJSn_KmcdKHy2tB8SziLkUi7odHwk0bL09ETt2oYx0SrnPQ@mail.gmail.com>
 <8e1f047e-73aa-81dc-adb4-72653eac6d76@panix.com>
In-Reply-To: <8e1f047e-73aa-81dc-adb4-72653eac6d76@panix.com>
From: "'Karl Wilbur' via blinux-list@redhat.com" <blinux-list@redhat.com>
Date: Mon, 27 Nov 2023 09:45:42 -0500
Message-ID: <CAMuGJSk6wriQzK6v2soE=0vF593q12ugUbEqzQGJAMFr3Xs+HQ@mail.gmail.com>
Subject: Re: vlcrc file needed
To: Jude DaShiell <jdashiel@panix.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: karlwilbur.net
Content-Type: multipart/alternative; boundary="000000000000f41dad060b235b56"
X-Original-Sender: karl@karlwilbur.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of karl@karlwilbur.net designates 209.85.218.51 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
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

--000000000000f41dad060b235b56
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah! I understand. I didn't give you a link to the repo (that you would use
with `git clone`) but rather directly to the specific `vlcrc` file. It
didn't occur to me that you might prefer to clone the repo.

Glad you got it. Hope it helps.

--
Karl Wilbur
513-322-2481
karl@karlwilbur.net


On Mon, Nov 27, 2023 at 4:38=E2=80=AFAM Jude DaShiell <jdashiel@panix.com> =
wrote:

> I tried git clone on that github.com url you sent and that didn't work.
> However wget got the file for me.  Thanks for the assist, I needed to use
> te correct download tool.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Mon, 27 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:
>
> > I'm not sure what you mean about GitHub.
> >
> > The link that I gave you goes straight to a `vlcrc` file that has 3600
> > lines of config option and comments that somewhat explain what the conf=
ig
> > option does, its datatype, as well as the default value. I just checked
> the
> > link and it works.
> >
> > Now, it is old and the config option may have changed, but I think it's
> > unlikely that it has changed much.
> >
> > --
> > Karl Wilbur
> > 513-322-2481
> > karl@karlwilbur.net
> >
> > On Sun, Nov 26, 2023, 18:37 Jude DaShiell <jdashiel@panix.com> wrote:
> >
> > > The github site is gone no longer exists.
> > > The incomplete documentation on vlcrc configuration location I have
> > > already read.
> > > If missing a vlcrc file how to get vlc to make you a basic vlcrc file
> that
> > > could then be edited would be a nice thing to know since configuratio=
n
> > > file format and valid contents isn't documented.  I'll try cvlc and
> see if
> > > that works.
> > >
> > >
> > > -- Jude <jdashiel at panix dot com> "There are four boxes to be used =
in
> > > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > > order." Ed Howdershelt 1940.
> > >
> > > On Sun, 26 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:
> > >
> > > > This is pretty old but might be a good place to start:
> > > > (a GitHub repo that has someone's `vlcrc` file in it)
> > > >
> https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc
> > > >
> > > > Also, VLC docs about config file location:
> > > > http://www.videolan.org/support/faq.html#Config
> > > >
> > > > --
> > > > Karl Wilbur
> > > > 513-322-2481
> > > > karl@karlwilbur.net
> > > >
> > > > On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com>
> wrote:
> > > >
> > > > > What's not on that videolan website is instructions for command
> line
> > > users
> > > > > giving format of vlcrc and valid items that can go in that vlcrc
> file.
> > > > > I installed mpv and vlc on archlinux and have mpv working since
> it's
> > > > > better documented but not the case with vlc.
> > > > >
> > > > >
> > > > > -- Jude <jdashiel at panix dot com> "There are four boxes to be
> used in
> > > > > defense of liberty: soap, ballot, jury, and ammo. Please use in
> that
> > > > > order." Ed Howdershelt 1940.
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Googl=
e
> > > Groups "
> > > > > blinux-list@redhat.com" group.
> > > > > To unsubscribe from this group and stop receiving emails from it,
> send
> > > an
> > > > > email to blinux-list+unsubscribe@redhat.com.
> > > > >
> > > > >
> > > >
> > > >
> > >
> >
> >
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000f41dad060b235b56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ah! I understand. I didn&#39;t give you a link to the=
 repo (that you would use with `git clone`) but rather directly to the spec=
ific `vlcrc` file. It didn&#39;t occur to me that you might prefer to clone=
 the repo.</div><div><br></div><div>Glad you got it. Hope it helps.<br></di=
v><div></div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div>--</div><div>Karl Wilbur<br>513-322-2481<br><a href=3D"mailto:kar=
l@karlwilbur.net" target=3D"_blank">karl@karlwilbur.net</a></div></div></di=
v></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Nov 27, 2023 at 4:38=E2=80=AFAM Jude =
DaShiell &lt;<a href=3D"mailto:jdashiel@panix.com">jdashiel@panix.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I trie=
d git clone on that <a href=3D"http://github.com" rel=3D"noreferrer" target=
=3D"_blank">github.com</a> url you sent and that didn&#39;t work.<br>
However wget got the file for me.=C2=A0 Thanks for the assist, I needed to =
use<br>
te correct download tool.<br>
<br>
<br>
-- Jude &lt;jdashiel at panix dot com&gt; &quot;There are four boxes to be =
used in<br>
defense of liberty: soap, ballot, jury, and ammo. Please use in that<br>
order.&quot; Ed Howdershelt 1940.<br>
<br>
On Mon, 27 Nov 2023, &#39;Karl Wilbur&#39; via <a href=3D"mailto:blinux-lis=
t@redhat.com" target=3D"_blank">blinux-list@redhat.com</a> wrote:<br>
<br>
&gt; I&#39;m not sure what you mean about GitHub.<br>
&gt;<br>
&gt; The link that I gave you goes straight to a `vlcrc` file that has 3600=
<br>
&gt; lines of config option and comments that somewhat explain what the con=
fig<br>
&gt; option does, its datatype, as well as the default value. I just checke=
d the<br>
&gt; link and it works.<br>
&gt;<br>
&gt; Now, it is old and the config option may have changed, but I think it&=
#39;s<br>
&gt; unlikely that it has changed much.<br>
&gt;<br>
&gt; --<br>
&gt; Karl Wilbur<br>
&gt; 513-322-2481<br>
&gt; <a href=3D"mailto:karl@karlwilbur.net" target=3D"_blank">karl@karlwilb=
ur.net</a><br>
&gt;<br>
&gt; On Sun, Nov 26, 2023, 18:37 Jude DaShiell &lt;<a href=3D"mailto:jdashi=
el@panix.com" target=3D"_blank">jdashiel@panix.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; The github site is gone no longer exists.<br>
&gt; &gt; The incomplete documentation on vlcrc configuration location I ha=
ve<br>
&gt; &gt; already read.<br>
&gt; &gt; If missing a vlcrc file how to get vlc to make you a basic vlcrc =
file that<br>
&gt; &gt; could then be edited would be a nice thing to know since configur=
ation<br>
&gt; &gt; file format and valid contents isn&#39;t documented.=C2=A0 I&#39;=
ll try cvlc and see if<br>
&gt; &gt; that works.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; -- Jude &lt;jdashiel at panix dot com&gt; &quot;There are four bo=
xes to be used in<br>
&gt; &gt; defense of liberty: soap, ballot, jury, and ammo. Please use in t=
hat<br>
&gt; &gt; order.&quot; Ed Howdershelt 1940.<br>
&gt; &gt;<br>
&gt; &gt; On Sun, 26 Nov 2023, &#39;Karl Wilbur&#39; via <a href=3D"mailto:=
blinux-list@redhat.com" target=3D"_blank">blinux-list@redhat.com</a> wrote:=
<br>
&gt; &gt;<br>
&gt; &gt; &gt; This is pretty old but might be a good place to start:<br>
&gt; &gt; &gt; (a GitHub repo that has someone&#39;s `vlcrc` file in it)<br=
>
&gt; &gt; &gt; <a href=3D"https://github.com/bashwork/settings/blob/master/=
linux/.config/vlc/vlcrc" rel=3D"noreferrer" target=3D"_blank">https://githu=
b.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Also, VLC docs about config file location:<br>
&gt; &gt; &gt; <a href=3D"http://www.videolan.org/support/faq.html#Config" =
rel=3D"noreferrer" target=3D"_blank">http://www.videolan.org/support/faq.ht=
ml#Config</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; Karl Wilbur<br>
&gt; &gt; &gt; 513-322-2481<br>
&gt; &gt; &gt; <a href=3D"mailto:karl@karlwilbur.net" target=3D"_blank">kar=
l@karlwilbur.net</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Sun, Nov 26, 2023, 07:36 Jude DaShiell &lt;<a href=3D"mai=
lto:jdashiel@panix.com" target=3D"_blank">jdashiel@panix.com</a>&gt; wrote:=
<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; What&#39;s not on that videolan website is instructions=
 for command line<br>
&gt; &gt; users<br>
&gt; &gt; &gt; &gt; giving format of vlcrc and valid items that can go in t=
hat vlcrc file.<br>
&gt; &gt; &gt; &gt; I installed mpv and vlc on archlinux and have mpv worki=
ng since it&#39;s<br>
&gt; &gt; &gt; &gt; better documented but not the case with vlc.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; -- Jude &lt;jdashiel at panix dot com&gt; &quot;There a=
re four boxes to be used in<br>
&gt; &gt; &gt; &gt; defense of liberty: soap, ballot, jury, and ammo. Pleas=
e use in that<br>
&gt; &gt; &gt; &gt; order.&quot; Ed Howdershelt 1940.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; You received this message because you are subscribed to=
 the Google<br>
&gt; &gt; Groups &quot;<br>
&gt; &gt; &gt; &gt; <a href=3D"mailto:blinux-list@redhat.com" target=3D"_bl=
ank">blinux-list@redhat.com</a>&quot; group.<br>
&gt; &gt; &gt; &gt; To unsubscribe from this group and stop receiving email=
s from it, send<br>
&gt; &gt; an<br>
&gt; &gt; &gt; &gt; email to <a href=3D"mailto:blinux-list%2Bunsubscribe@re=
dhat.com" target=3D"_blank">blinux-list+unsubscribe@redhat.com</a>.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
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

--000000000000f41dad060b235b56--

