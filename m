Return-Path: <blinux-list+bncBD36XIOOVQCRBG4TRWVQMGQEKDTYNUI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F827F92DC
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 14:35:25 +0100 (CET)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-1f08758b52csf4605676fac.3
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 05:35:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701005724; cv=pass;
        d=google.com; s=arc-20160816;
        b=gaCbtV7qSq/NSW6rwJLgXhckfeZse/w1BK8+pn7qFbQCId+TcySd0uc9TVtGSdIszD
         ZWtXtUlPV8R+aRsaO37jjIUBQjsoFGe4SRO6Q0uW8hnYhiGxQ6oC7y/ReWVs+DrJ9mUw
         aSyAGT3BTW0z4HN3clWL0vq+eB+DxrtKt5tQSSUdoVMgNXRusACA8lbW8iSOBsUvVFSc
         pYmFTusXwczN3o6FKZfi23L5i+WWzx4eVWRT7X3SDyuiHzghWBTqAKa7LVBcZBe1o1ud
         TUlfKsEwEMLXtCMCfwOxXUCkqKVH2jzviOUYL9+iiYl50hb0F6rmf0zbm6j13bV8pepR
         Nr1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=WBSz2vKS+R7ei/LgZA3Y6aysiqnFRHlTm5P+6InSAPM=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=UihgaETDULgAZ3m7FLeHWLk5f1R2qd391wW1oNBWiDXefWyCGRfo7Dy4JnamG9Lx0Y
         pSZ/rPyc09lyn9rTqocYZRCRZVZosZADooBtEtm/IL9TTSybp3tAcvzg/vsnndrRA7s3
         CuAAO0g3NYozaW0EKqwD0NLRprhqUWd/ShLy+leGgLQO8jh11gXWl3gYZrMk+vuu6rrW
         fcF7ppIPQAdepbcr2qbJd+/d157rg6tVmiJT25NGk6jPDq51oDvmFxLc2KJ1RYw3DVej
         Oi/8vUcp24GHjuRmIeRtOuMLFigsKmxl88KQ75gIH00BCZnnsgRj4pLwqDHHlLhXhEMZ
         QZHg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.45 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701005724; x=1701610524;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WBSz2vKS+R7ei/LgZA3Y6aysiqnFRHlTm5P+6InSAPM=;
        b=Bebtk3Da0jo1tnMgK6G/C3uGMLy33vfJnmyCDDga/9R3ayFlR2Hm3m/b6UUJiohwvH
         /pFsuVp12d7OIX0+ilrzd6B1Xu5cvRxU/yOcQNsMtCMtkE2wiFWqk38hGzlxmnYiTRmy
         l7aPhi8btHciPXp8RDZIztjrQfXMEsQqW04kUeMoU+Vkr6TRmswECOz65M7+nOU5u8iU
         jlOAHrBd2akErML3vI0N9cre7zfQ/xUQC7uQCun2BOEUCpd/asY1Cdhu0Lkl/FZTVGBO
         V4Rpl9NfRwqyMggPxNv9nZVL1CO/3pUW7kFl5DDTZhGvCBPVnWTMktnOV44bc8DXdUph
         Tl+A==
X-Gm-Message-State: AOJu0YwoKSuEzp0Gl/FxR/29NWmVq3LEgGRmwVOV37cewZvYoEcLPIbA
	oCD1FOovUw3XEYgwXiG1sutQZA==
X-Google-Smtp-Source: AGHT+IHmQg9doPoU33Zh/04tG7IIx6Y8yk0O8HTLj7fAXrLuMi7Knrf+XNarws9oAIDUSbHY7o+JOg==
X-Received: by 2002:a05:6871:550:b0:1fa:2095:e1f with SMTP id t16-20020a056871055000b001fa20950e1fmr5200007oal.35.1701005724040;
        Sun, 26 Nov 2023 05:35:24 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:41d1:b0:1fa:855:79f0 with SMTP id
 z17-20020a05687041d100b001fa085579f0ls864663oac.2.-pod-prod-09-us; Sun, 26
 Nov 2023 05:35:23 -0800 (PST)
X-Received: by 2002:a05:6870:5ba3:b0:1fa:3be6:3b2a with SMTP id em35-20020a0568705ba300b001fa3be63b2amr2246340oab.30.1701005723424;
        Sun, 26 Nov 2023 05:35:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701005723; cv=none;
        d=google.com; s=arc-20160816;
        b=xbHD+4Uzu2ye2FKN+glcVRfG633wT+H7V7GNyZ8xlPZR0tBodHKWLVxklhFA98CRDR
         Xsy/2euwdKl7ePGlSYS9gxGgLKIn43/JAyvSP3y29r77cVs0Q4TX6x3dmbxyu9nD2NO/
         RnNKNWWE33cuK0ENlN1TCCGiOBrOF5SzjKn7RZASDUb9QI2M4vvkq9Us8l3LVbsWQcuL
         br740siubZf5/tTY/B8/0MM/HoUnkK3bqXrR6Tu/7C0+D7dXbidbznh/0FYhX9BT+NpK
         oy5cPY41IKIy+7DdNHncwJJfub5yXTUF7sk9oDism2SSZPiC4z90edl/3ilfcTpPIds3
         3ehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=+aUgdHSZ4hyy/yAtPv1yJap9lA8/5yY1CtuSWg0QVCA=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=CMwNxxQ8sPfCjHzqU4/I3fCmeUHTVypN3/uD3mBAg+WDrND0l3BEuZEfYb7HseWhCI
         wecw2+WhBfbSjELFNQHHVt6+yN4NZkXq6S3hUZCi2p2TPrLwQSZaCS7bePkhO56YiFJR
         Z9exjSAOYCyzLjrOXlKmuYk7wk2MO0MMw9g8rTWTgSCiEVCNXvefD3wS3SiZjT4Vfs8H
         XWM0wJzscKX6XX4Md/x36GqqW3+JRkPi6WeWn7Rdjl2X1flwmN15u2XxMyISiOjRNWa9
         W+rw3kxJZR8z7lNW4MOSkgWg9yKCg/0lxgoC9cG7XrSygjOCcSzvM9Stsmaj4EE2H98l
         lAlg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.45 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id i13-20020a05622a08cd00b004239f109d57si4351268qte.99.2023.11.26.05.35.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 05:35:23 -0800 (PST)
Received-SPF: pass (google.com: domain of karl@karlwilbur.net designates 209.85.218.45 as permitted sender) client-ip=209.85.218.45;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-628-dT1EwS0nO82rxzFAriMesQ-1; Sun, 26 Nov 2023 08:35:21 -0500
X-MC-Unique: dT1EwS0nO82rxzFAriMesQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B20F85A59D
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 13:35:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6796E1121307; Sun, 26 Nov 2023 13:35:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 470391121306
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 13:35:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2222A811E7B
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 13:35:21 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-68-EpTaFTt0Ofq6o7N5VSOvZQ-1; Sun, 26 Nov 2023 08:35:18 -0500
X-MC-Unique: EpTaFTt0Ofq6o7N5VSOvZQ-1
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a00b056ca38so448013766b.2
        for <blinux-list@redhat.com>; Sun, 26 Nov 2023 05:35:18 -0800 (PST)
X-Received: by 2002:a17:906:2f14:b0:9fe:ab09:4d9 with SMTP id
 v20-20020a1709062f1400b009feab0904d9mr5505634eji.59.1701005717126; Sun, 26
 Nov 2023 05:35:17 -0800 (PST)
MIME-Version: 1.0
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
In-Reply-To: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
From: "'Karl Wilbur' via blinux-list@redhat.com" <blinux-list@redhat.com>
Date: Sun, 26 Nov 2023 08:35:03 -0500
Message-ID: <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com>
Subject: Re: vlcrc file needed
To: Jude DaShiell <jdashiel@panix.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: karlwilbur.net
Content-Type: multipart/alternative; boundary="00000000000087d2d9060b0e4114"
X-Original-Sender: karl@karlwilbur.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of karl@karlwilbur.net designates 209.85.218.45 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
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

--00000000000087d2d9060b0e4114
Content-Type: text/plain; charset="UTF-8"

This is pretty old but might be a good place to start:
(a GitHub repo that has someone's `vlcrc` file in it)
https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc

Also, VLC docs about config file location:
http://www.videolan.org/support/faq.html#Config

--
Karl Wilbur
513-322-2481
karl@karlwilbur.net

On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com> wrote:

> What's not on that videolan website is instructions for command line users
> giving format of vlcrc and valid items that can go in that vlcrc file.
> I installed mpv and vlc on archlinux and have mpv working since it's
> better documented but not the case with vlc.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> --
> You received this message because you are subscribed to the Google Groups "
> blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--00000000000087d2d9060b0e4114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">This is pretty old but might be a good =
place to start:<br></div><div dir=3D"auto">(a GitHub repo that has someone&=
#39;s `vlcrc` file in it)<br><div dir=3D"auto"><a href=3D"https://github.co=
m/bashwork/settings/blob/master/linux/.config/vlc/vlcrc">https://github.com=
/bashwork/settings/blob/master/linux/.config/vlc/vlcrc</a></div><div dir=3D=
"auto"><br></div><div dir=3D"auto"><div dir=3D"auto">Also, VLC docs about c=
onfig file location:=C2=A0<br></div><div dir=3D"auto"><a href=3D"http://www=
.videolan.org/support/faq.html#Config">http://www.videolan.org/support/faq.=
html#Config</a></div><div dir=3D"auto"><br></div></div><div dir=3D"auto"><d=
iv data-smartmail=3D"gmail_signature" dir=3D"auto">--<br>Karl Wilbur<br>513=
-322-2481<br><a href=3D"mailto:karl@karlwilbur.net">karl@karlwilbur.net</a>=
</div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sun, Nov 26, 2023, 07:36 Jude DaShiell &lt;<a href=3D"=
mailto:jdashiel@panix.com">jdashiel@panix.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">What&#39;s not on that videolan website is instru=
ctions for command line users<br>
giving format of vlcrc and valid items that can go in that vlcrc file.<br>
I installed mpv and vlc on archlinux and have mpv working since it&#39;s<br=
>
better documented but not the case with vlc.<br>
<br>
<br>
-- Jude &lt;jdashiel at panix dot com&gt; &quot;There are four boxes to be =
used in<br>
defense of liberty: soap, ballot, jury, and ammo. Please use in that<br>
order.&quot; Ed Howdershelt 1940.<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;<a href=3D"mailto:blinux-list@redhat.com" target=3D"_blank" rel=3D"nor=
eferrer">blinux-list@redhat.com</a>&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list%2Bunsubscribe@redhat.com" target=3D"_=
blank" rel=3D"noreferrer">blinux-list+unsubscribe@redhat.com</a>.<br>
<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--00000000000087d2d9060b0e4114--

