Return-Path: <blinux-list+bncBD36XIOOVQCRBRMCRWVQMGQEPSOL5II@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F357F92C2
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 13:59:51 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-670237ba89asf61701586d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 04:59:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701003590; cv=pass;
        d=google.com; s=arc-20160816;
        b=TpjN75HkKGJpKpbLWl4hLlvns5FZHZKYKb8GzTwdk+mE/fQy469+X4502UJqO8OU2f
         rlEMRUlAMstUNMD6wtkdcKJ0HWa6T2V0duKzHT+y6iL+w0MCKG1G0QUFo+zY1IWke3Wh
         +/4MBtKHrmbKL6A1Jgn6dLM6BGIm+Szv3lTJigzmuNK0DywXhTq6Z7hox4EqbpmKfEAG
         aUexPZGj7eyvY5BOUSBoCeMZRzsgTkLqKVaLaLrbQfPs1Sc2V/7VBrRN7KZlxUSh5h1z
         EqnLY/z920Nmg7J+wEkcucYynnbjcgW52Z8tkGaql4nBI1yRHvQQvSMUpuw6XCtUKlAP
         yL0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=IXmT2Ht+510x40cWdSWiFf0eGt6IpaDzUvJPC9fgTRo=;
        fh=dySJoaI0YIg8lBdVIj5InnGto4jopuxePvx29Zt5bFo=;
        b=HLgGvaJSu8fM1x9LQUIbb6CPZlBhP7UjEXDV15Tc0BQ/lSAoLSNcY772oVbQaPAHUV
         TyLv51vbY97fNHilwGeW4mnu50MdfrT14RQX/wKSO/G6v8BCJfeoLE96T1J5S1J5FXwp
         tHtEIRLeMIm4y0u2vA+Ea9HvpAWQOjz5AK/2z0lHoxYnbSqRRp1/bvYceZj5JTIvs2RP
         FK09B28YJ3f2RaPk0gZZSav76WLCoVPPNirZypELJnIvyJsBscKO9C6OSJTKWbnfpiUs
         DTJhyxWCP5pz/hy5hKpn3wuBXU/2oz8DzTva6ZNaEuwtygUtCsyc+ofcjXuofZPH7+/3
         /v2A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.167.42 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701003590; x=1701608390;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXmT2Ht+510x40cWdSWiFf0eGt6IpaDzUvJPC9fgTRo=;
        b=GRpYD7IkNd+ES9DqBeaYB8PIIkhmhqWqQVLhmO274VRnWgO44LmauSIUj7qxWOXXW0
         fKUi2eWDw6P3/KX52x/FbF5F01Lqutva9SCV2H82ylVdF8Cgr/qRXsFEOqtWaiECbcP1
         d32TKZsK7LgD3Y7aicG3ZBt3sAOMHYpwsHy8ksd3dw4pBm5LqZgwgSzzEWf4emZPV0QD
         mknHxutVVvQUbEnfYSCMO2ZgY4c1C96Tqo2hjqfJIwsAU9Hdsq363AcLy8JroudrCEc5
         2tMyD/qEazAE+bWVJaVQSzOZy00HMwEKA9M5P4Oja9qzlaOXekuq/sRA02nNlX3FnWX3
         yPpQ==
X-Gm-Message-State: AOJu0YxBe8fW8rlXRzIvOgLIpxAumdUGNDWoAq47fCJXzm/964ZO15Y8
	k+4cSBagqbC733rcuwBJ14jqTw==
X-Google-Smtp-Source: AGHT+IGWGIDpakw4W71r8Kf5W1dvKRqC05YrABT5MmeM6BiEqBxVF4V3RV+tYj8mGNyViruOrI5+sg==
X-Received: by 2002:a05:6214:5089:b0:67a:1500:f4b9 with SMTP id kk9-20020a056214508900b0067a1500f4b9mr12039025qvb.25.1701003590162;
        Sun, 26 Nov 2023 04:59:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:27cf:b0:67a:31bb:ce0f with SMTP id
 ge15-20020a05621427cf00b0067a31bbce0fls30731qvb.1.-pod-prod-00-us; Sun, 26
 Nov 2023 04:59:49 -0800 (PST)
X-Received: by 2002:a05:620a:24c2:b0:76e:f686:cad8 with SMTP id m2-20020a05620a24c200b0076ef686cad8mr20280152qkn.13.1701003589459;
        Sun, 26 Nov 2023 04:59:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701003589; cv=none;
        d=google.com; s=arc-20160816;
        b=rP+G+8MIR/pEObYGE7rOg7fkHFnM4+qMjrdyqfmLs8NRL0X8a8+sFlJVmPoJLgn4Of
         mIXEaUbVlE9Am7tFdpjV2mJuqG347quEdBAXFFcIrBS4JiZlmATMHrxj1guinCpLsFnh
         XyPloFVLe2LYVmsWCa5lRn6Zltd5NT1yCXmyrOIS8j16LRyEU4RwnZsp/7Of16XEzUWO
         399RcRXWKE5RP0DIh7rgd2QBhEA+fzgpiibPn5crcOukhBCN9BlOpGcl5gIqwWVZ31B0
         YY8OTCp3K56WwvCC9HgeS69+xCugjRdDMWyJtI8IefXXpjjf550zGJ0B6eS4aA5aN4mr
         Ix0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=QFZ3qzTI3zZvGfWFiaU90M5BFONTDQKmZV9G/MXSuMM=;
        fh=dySJoaI0YIg8lBdVIj5InnGto4jopuxePvx29Zt5bFo=;
        b=E5x0zsF9xosffFdrA8B6TdUoQfL324tSh+VFpMdsgd+Qp54IB9fE4dZQvp4hi3nOjT
         /UsGszM311eXr+l+0/hIBgGVYepRsbig/vCCUwAna8ik9FVePLbXHn+8Cvwd3HiPpNlA
         uyJpiiguUc64Bml7PKH8av66OnW4pbIvq2IHOj6j6u/R253r14XU3tYM+XycB+RTZgvA
         CCowoTxhkeSHmyQRVl0fInHsxCgwM94+iiDuIll/NdBXo0Z7saOYoUw4Voj/TOMCGQQu
         dv2oPvmhdvfYUtWxSoihu4fwKuLey18y80F71kozf9NiThi83OHKpzZCjJM07rhH+e80
         rxIA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.167.42 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id i20-20020ac85c14000000b0041cb5fb218esi7141218qti.378.2023.11.26.04.59.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 04:59:48 -0800 (PST)
Received-SPF: pass (google.com: domain of karl@karlwilbur.net designates 209.85.167.42 as permitted sender) client-ip=209.85.167.42;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-241-qjmQyzrDPGq3wPlvemv7rA-1; Sun, 26 Nov 2023 07:59:47 -0500
X-MC-Unique: qjmQyzrDPGq3wPlvemv7rA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D53485A59D
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 12:59:47 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 38C1340C6EBB; Sun, 26 Nov 2023 12:59:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3104240C6EB9
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 12:59:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B5D7185A780
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 12:59:47 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-16-Bswn0pjwP5GkfxWil-yWYw-1; Sun, 26 Nov 2023 07:59:44 -0500
X-MC-Unique: Bswn0pjwP5GkfxWil-yWYw-1
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50aab3bf71fso4568231e87.3
        for <blinux-list@redhat.com>; Sun, 26 Nov 2023 04:59:43 -0800 (PST)
X-Received: by 2002:a05:6512:3b07:b0:50b:ad3f:6e74 with SMTP id
 f7-20020a0565123b0700b0050bad3f6e74mr1391063lfv.33.1701003582229; Sun, 26 Nov
 2023 04:59:42 -0800 (PST)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2311252143200.3657901@users.shellworld.net>
 <8d5f0118-fd28-ba98-f18a-0606ab60ca23@panix.com> <Pine.LNX.4.64.2311260030260.3660318@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2311260030260.3660318@users.shellworld.net>
From: "'Karl Wilbur' via blinux-list@redhat.com" <blinux-list@redhat.com>
Date: Sun, 26 Nov 2023 07:59:29 -0500
Message-ID: <CAMuGJSmWMYPi5csZ9EmQRFbjtif_GwpvSoo0ZCp=jG3Qan9TWg@mail.gmail.com>
Subject: Re: interesting email bounce?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Jude DaShiell <jdashiel@panix.com>, 
	Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: karlwilbur.net
Content-Type: multipart/alternative; boundary="00000000000047e562060b0dc2f0"
X-Original-Sender: karl@karlwilbur.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of karl@karlwilbur.net designates 209.85.167.42 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
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

--00000000000047e562060b0dc2f0
Content-Type: text/plain; charset="UTF-8"

This group is hosted at Google. You can confirm that by trading the
unsubscribe text added to e reach message by Google:

"You received this message because you are subscribed to the Google Groups "
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an
email to blinux-list+unsubscribe@redhat.com."

--
Karl Wilbur
513-322-2481
karl@karlwilbur.net

On Sun, Nov 26, 2023, 00:31 Karen Lewellen <klewellen@shellworld.net> wrote:

> Why would that impact things here, unless this group is hosted at google?
> what is returned was actually sent on Monday.
>
>
>
> On Sun, 26 Nov 2023, Jude DaShiell wrote:
>
> > with google's smtp, people are limited to a maximum of 50 posts a day
> > unless that was changed recently.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > On Sat, 25 Nov 2023, Karen Lewellen wrote:
> >
> >> Hi everyone,
> >> have any of you posted, only to have your post returned with the list
> email
> >> host saying not now?
> >> Best,
> >> Karen
> >>
> >>
> >>
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--00000000000047e562060b0dc2f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">This group is hosted at Google. You can confirm that by t=
rading the unsubscribe text added to e reach message by Google:<div dir=3D"=
auto"><br></div><div dir=3D"auto">&quot;<span style=3D"color:rgb(136,136,13=
6);font-size:12.8px">You received this message because you are subscribed t=
o the Google Groups &quot;</span><a href=3D"mailto:blinux-list@redhat.com" =
style=3D"text-decoration-line:none;color:rgb(66,133,244);font-size:12.8px">=
blinux-list@redhat.com</a><span style=3D"color:rgb(136,136,136);font-size:1=
2.8px">&quot; group.</span><br style=3D"color:rgb(136,136,136);font-size:12=
.8px"><span style=3D"color:rgb(136,136,136);font-size:12.8px">To unsubscrib=
e from this group and stop receiving emails from it, send an email to=C2=A0=
</span><a href=3D"mailto:blinux-list%2Bunsubscribe@redhat.com" style=3D"tex=
t-decoration-line:none;color:rgb(66,133,244);font-size:12.8px">blinux-list+=
unsubscribe@redhat.com</a><span style=3D"color:rgb(136,136,136);font-size:1=
2.8px">.</span>&quot;</div><div dir=3D"auto"><br><div data-smartmail=3D"gma=
il_signature" dir=3D"auto">--<br>Karl Wilbur<br>513-322-2481<br><a href=3D"=
mailto:karl@karlwilbur.net">karl@karlwilbur.net</a></div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov =
26, 2023, 00:31 Karen Lewellen &lt;<a href=3D"mailto:klewellen@shellworld.n=
et">klewellen@shellworld.net</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">Why would that impact things here, unless this group is hosted at =
google?<br>
what is returned was actually sent on Monday.<br>
<br>
<br>
<br>
On Sun, 26 Nov 2023, Jude DaShiell wrote:<br>
<br>
&gt; with google&#39;s smtp, people are limited to a maximum of 50 posts a =
day<br>
&gt; unless that was changed recently.<br>
&gt;<br>
&gt;<br>
&gt; -- Jude &lt;jdashiel at panix dot com&gt; &quot;There are four boxes t=
o be used in<br>
&gt; defense of liberty: soap, ballot, jury, and ammo. Please use in that<b=
r>
&gt; order.&quot; Ed Howdershelt 1940.<br>
&gt;<br>
&gt; On Sat, 25 Nov 2023, Karen Lewellen wrote:<br>
&gt;<br>
&gt;&gt; Hi everyone,<br>
&gt;&gt; have any of you posted, only to have your post returned with the l=
ist email<br>
&gt;&gt; host saying not now?<br>
&gt;&gt; Best,<br>
&gt;&gt; Karen<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--00000000000047e562060b0dc2f0--

