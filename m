Return-Path: <blinux-list+bncBC7LHOXXWIIRBUGZXWWQMGQELVE2NAQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF9383880E
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 08:37:54 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6800aa45af1sf58877686d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 22 Jan 2024 23:37:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1705995473; cv=pass;
        d=google.com; s=arc-20160816;
        b=raI/wDxt3otuFJUKlOMV83PlmaTxu2gQembWc2pCJyqzrQjtA5Et8yxpfnoc9DS/Ki
         MuWmJqQi+CaU8OssPnp58HgGZTZgQXrbFxl0cYQ3oMBW0vzw1DQFIRkTKSnNVCdfKeIx
         PS0Mm3qv5iCPr1ySBjt4rrKwcJ3kyvHMfVB1Y7TU79/ITIfapLTyIwJ6jTpyQuFG7Nxm
         xU4dPfWJbyTt3qNaGWpCPsY3wz2MG5Y45g7Abiwsi5820ad9xi5V6g68aHlAO9k8oSNN
         p4/V0WssaKLWyc7UDETJis0tUb8CMN6RXjrrrKf3DeQMkIBzV6z9frMtnbpfFd6JsttK
         xxqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=B/T/In/pHq2amje9MrtQVNZvoqfnuwtRVvm1VkvB310=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=W2qDj7LaJkC7UK0WQHS8H+D5T07xhw6qmknX/EbYM1IaFTvQ8QMcKZxXizuohOyt8L
         8PKNeDdpVDGkS4FV/padrLEmK19JC4Mc6Sg1OnYlVqcY5anowkDBDIErW4yhlhZaiZ2A
         ZA+omhsUjlPIIu+2z4e6wRwsJHhBSdgxPozyV+jMSZ+06R7lk81sb2qS+Goop7MfajtU
         DjOJZPNqcIU42PmrVCfdK7LjF09UfAKtlT8Ml/67WfREVQsEBiAjXLguFVCcbWBOxZO1
         i+EAEKoqAv4Su7g9a8/3fZgjAEnf8qf+Z5iPgiowVpDABTqg0c5G79QwA0M1d71KbKDb
         VDxQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.177 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705995473; x=1706600273;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B/T/In/pHq2amje9MrtQVNZvoqfnuwtRVvm1VkvB310=;
        b=a1+O+YqQ6hfeUE9m1o7cEVeOjdstMFNuqtjbtC0rKnxvRXZUtPY4MfSQexxomP3p1O
         GxgjARueHoqAc71VECzfHnllW27/aCVOzj1+Q4sxm5qde5Eqnbbe88eYfiWiYIV4mCSx
         P5HuezLp5LeROIzdyNu7EkiRbf5/GfTl0XQMgts6A7eC8Y/mBJhRWKz2l7JJnXavnKZo
         1yPUmQVVfq4np+Xf/MSviywNJlf1332axeEv+f3rBI11uft8P9Ym5GR3EcHLA1TzXYXb
         sg4h6vIzKtZ2qc/ce0NXenPnWZz9uVmVaR6vcaI5OQqS2RA16GIzwS9vva56voADQxuK
         FhJQ==
X-Gm-Message-State: AOJu0YzW7sf9+Wrpbq2TKDk2TFTH/SB/G/JDNML8HFCFwy50rKDKjV0E
	2DVLjBSU/Ilb54K65yuAT4OGLHpFakDiUfFcGminSC62LMV8qbFOKrZVD6rTe64=
X-Google-Smtp-Source: AGHT+IHQI0w7b4KgEhHmavuy9Bs8oevCi/HOYa3o+csPhaJoOZilofae0rvNNwucV/CBaxSoDKbdPA==
X-Received: by 2002:ad4:5ca9:0:b0:685:86e0:f3aa with SMTP id q9-20020ad45ca9000000b0068586e0f3aamr468098qvh.5.1705995472770;
        Mon, 22 Jan 2024 23:37:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b345:0:b0:67f:744d:8b3e with SMTP id a5-20020a0cb345000000b0067f744d8b3els4565685qvf.1.-pod-prod-03-us;
 Mon, 22 Jan 2024 23:37:52 -0800 (PST)
X-Received: by 2002:a05:6214:2aa4:b0:685:34a0:bbbf with SMTP id js4-20020a0562142aa400b0068534a0bbbfmr485124qvb.1.1705995471934;
        Mon, 22 Jan 2024 23:37:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705995471; cv=none;
        d=google.com; s=arc-20160816;
        b=GpqSoHtQcO4x+64zjZCWYs3f7bREhP9VA0cdBX8Rpz0V2Jrbp58xtp+fA5bxzbWZ81
         6PgtCiGDB+yUQQxZqXuU3GZ/HljHQdjibpnJc7xT26Fw7pABk2IAbYB9IZPDOyPlkfsn
         hcBX3Zs/fIKhLUUEQGA5/wfoIO1AAHXLROeYS5T9kjeGB5N/GgGGgM8jozeztHJZ1JU+
         7ZdtIpLplVZ7EeVdwV35vktLlZU2bJf9NG8RUOwBiGzbUA8AfYdGo0DeLHXr4H5w7bX1
         KNyA2N9cmLMgUPb2z8I24wY0AJsAGPr1Rx0lShTfLZF9xFM+fwriVsjxQ3D/3SNfQ49m
         OjfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=0N0UkzU1y4M5gXtn1HrY1rTav5lW6ncpJ3iawCvsjf8=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=LP//q005SStxMKy1eF0MDFdbbmwQuzj2m0pCuXZZSirJ9iLZiNK6mzjemmvmn+a7JK
         qCWXvFUL/zTPg4Jc2saj06MIkKZ9wD9IonaX9e7MhqqD4Lv3rVruFTz3pChG1vcencg4
         IkS5o+X1WzDgj4URUifCAv2PlNtBCi4O7Ba5sZWIuPCHjVrse7UbSv0n01JMRASgjfMQ
         5RfHtKnKZLjFEFjgncm5vz5TPI61O7ijN7pdQlJhdP+uLLf0ZfzuBhmMRV6F12kpx4e0
         s+8wl/muKeBJOyAVU88QJGzaIKL9zJ+yesKPfR0GK+OQ7Sh35sAlaSD1YYOZ06McLgbt
         iOQA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.177 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id g19-20020a0cf093000000b006868e2d8f07si1749895qvk.602.2024.01.22.23.37.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 23:37:51 -0800 (PST)
Received-SPF: pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.177 as permitted sender) client-ip=209.85.208.177;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-591-a54bCKmGNFauxxW7OnlKRg-1; Tue,
 23 Jan 2024 02:37:50 -0500
X-MC-Unique: a54bCKmGNFauxxW7OnlKRg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 103A43C0C495
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 07:37:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 014D0111E408; Tue, 23 Jan 2024 07:37:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE0A31121312
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 07:37:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE3B7100B524
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 07:37:49 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-491-f0l241mFMWudVqZVDRqrLw-1; Tue, 23 Jan 2024 02:37:46 -0500
X-MC-Unique: f0l241mFMWudVqZVDRqrLw-1
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2cd2f472665so39302841fa.2
        for <blinux-list@redhat.com>; Mon, 22 Jan 2024 23:37:45 -0800 (PST)
X-Received: by 2002:a2e:9f4a:0:b0:2cf:134b:9f87 with SMTP id
 v10-20020a2e9f4a000000b002cf134b9f87mr206538ljk.23.1705995463977; Mon, 22 Jan
 2024 23:37:43 -0800 (PST)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
From: Nimer Jaber <nimerjaber1@gmail.com>
Date: Mon, 22 Jan 2024 23:37:08 -0800
Message-ID: <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
Subject: Re: Linux e-readers do they exist?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="0000000000009e7153060f980558"
X-Original-Sender: nimerjaber1@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of nimerjaber1@gmail.com designates 209.85.208.177 as permitted
 sender) smtp.mailfrom=nimerjaber1@gmail.com
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

--0000000000009e7153060f980558
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Yes, check out the BT Speak. https://www.blazietech.com/products

On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <klewellen@shellworl=
d.net>
wrote:

> Hi all,
> Let me spell out what I mean.
> a portable Linux based in terms of being  open source device that can
> manage at the very least text files.  Something easy to load files into,
> as well as if possible add an open source edition of speech synthesis?
> Some work  being done  on dectalk if that resonates.
> Does such a device exist?
> Karen
>
>
>

--=20
Best,

Nimer Jaber

Check out and subscribe to BlindTechAdventures
<https://www.youtube.com/blindtechadventures> in podcast audio form on
YouTube for the latest happenings in tech.

You can follow @nimerjaber on Twitter <https://www.twitter.com/nimerjaber>
for the latest technology news.

Thank you, and have a great day!

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--0000000000009e7153060f980558
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Yes, check out the BT Speak.=C2=
=A0<a href=3D"https://www.blazietech.com/products">https://www.blazietech.c=
om/products</a></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen=
 &lt;<a href=3D"mailto:klewellen@shellworld.net">klewellen@shellworld.net</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
 all,<br>
Let me spell out what I mean.<br>
a portable Linux based in terms of being=C2=A0 open source device that can =
<br>
manage at the very least text files.=C2=A0 Something easy to load files int=
o, <br>
as well as if possible add an open source edition of speech synthesis?<br>
Some work=C2=A0 being done=C2=A0 on dectalk if that resonates.<br>
Does such a device exist?<br>
Karen<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Best,<br><br>Ni=
mer Jaber<br><br></div><div>Check out and subscribe to=C2=A0<a href=3D"http=
s://www.youtube.com/blindtechadventures" target=3D"_blank">BlindTechAdventu=
res</a> in podcast audio form on YouTube for the latest happenings in tech.=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">You can <a href=3D"https:=
//www.twitter.com/nimerjaber" target=3D"_blank">follow @nimerjaber on Twitt=
er</a> for the latest technology news.<br><br></div><div dir=3D"ltr">Thank =
you, and have a great day!<br></div></div></div></div></div></div></div></d=
iv></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--0000000000009e7153060f980558--

