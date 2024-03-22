Return-Path: <blinux-list+bncBCCIDSOV5UGBBS7H6OXQMGQEIKKGXAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2C2886553
	for <lists+blinux-list@lfdr.de>; Fri, 22 Mar 2024 03:58:20 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-69046d68828sf19024006d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 19:58:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711076300; cv=pass;
        d=google.com; s=arc-20160816;
        b=iru1fmsMvPt37w6oeoPsogFxPhj+mjao1YSYwEhZqU6sX4QCWufN0nVDlPyKMidUS4
         5WqGp8l7OY0dIgFQn2api/J0rGRIB1SAMoWmlorZ9HzkW3RipSylKL4h27E8c0Nvx031
         x+bFuB7KWgwaVQFcXO0J8q42v8l2tXjygMThqVHx5GvDKEySrwj7qniyPKNXxcCjxxK6
         8bHSpXVALjc5ZelNYJEO4BCoIcKs4p5J9t8L3+32hckHZ3Dp5fy4pbsBUiRj2TnfrU/j
         kqfLMHikv3v/CSLNiaGSke4EE+Xp6x+lb0wtd2if5rhJSXjXSbxG+oxpw0Fu0p94bxYM
         ASPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=Kq9BkkVg9wNhb0dK9AVJ4BjHO3UiDVJqzFQsCWw0udY=;
        fh=a6w9MvYZqElib90afFZmu7EZASRreYekG0H6mCS44rA=;
        b=v1IXsiAZrPh8xN58HGZlVBKll7cBA8s4L65AoDLxezt9GekCIU4puTYOVsj5lJzfAO
         pIIl+4lNRfIyRFGBnVLXTja1CB/4HYUKf+Ygeth6P2CCBOtMlIEnJkBl1As1fs1xIM6I
         P6frcqK0Xny6IwEFRZJk7qeCB2y9pVjwqhS3NLPrWDPX06B+lViLv2wICVtkCL7DMiGh
         gi3tOaS9zdI+oXQjuRsdtRFEV1UuSt8r+fQFO1wsfzXOrcwfuKSyVkWLMFBWTeOOjrcN
         sAcVCGy6KrUduK1EOQCek3wpYpU/nvyUJk23Vha+n10K2jnQCPSweiekTl7Y0QG8SjuE
         HYww==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711076300; x=1711681100;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kq9BkkVg9wNhb0dK9AVJ4BjHO3UiDVJqzFQsCWw0udY=;
        b=noC6n4PZGdrKnw2vy6rY6loTU/cchmGFcDnJ8hg7xzAc4haTg9QQkaEPCkOCeMCZcr
         Rbnqk1Okr6v56W8B+zFkRV9U1DBdUKXLCEebdW05x6yvGsPzAbAkkSFFayvLLQ2fU7PF
         GoOhbV0dPOMbVxzI2DXf5HdQqGgIeCt1xjwI/hdHmVGPORma9YOSQ7WiueHE4bfLv/yb
         LK1oqrawQdRQMhp1EfwzPDJQnNsfzi4Y9BgNvyAr10WFNTGNm/V4hFm8uHsp6S+CEpFK
         6Peg1o1OU0K7bxbuuRjh9luTfM4z3aEOCXYLYX+W1aBI+5Ou8wC3+u6ldbZeuPEz6F1X
         9+DA==
X-Forwarded-Encrypted: i=2; AJvYcCVGsWZHNmXjx+dMQuheawN2gvJo9IQjQSaxBkYTcAsAsERUHC6WRrLVKk5UQX6o1g1v4PnAezyWOwn7FkWGQERT4JBBbhp3yW3F
X-Gm-Message-State: AOJu0Yzxwgp7MN2k27ZhLJZ8lLtqX45QIl5IKg2hUMM8NTc6pTup9GrD
	7F9SAKk8KWVTPdf1bu2GMeAnl71IfG5yolYVYJPTuxgP6A1tO/3Xs8dvRWco2E8=
X-Google-Smtp-Source: AGHT+IEEV+OSln8LrKmoWM/aFPT/d9TSCItAaip/B/cF+xIlS8vMchdd+itlX82nQxeswiz1j+O5Nw==
X-Received: by 2002:a05:6214:1cc9:b0:691:46ee:6aba with SMTP id g9-20020a0562141cc900b0069146ee6abamr1097253qvd.20.1711076299720;
        Thu, 21 Mar 2024 19:58:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:250c:b0:68f:c7e6:37e3 with SMTP id
 gf12-20020a056214250c00b0068fc7e637e3ls2352072qvb.1.-pod-prod-04-us; Thu, 21
 Mar 2024 19:58:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXFh4QAo6Njb0iP7xdcsFYhZnWL5MXbKrlL0XK0fU4b029fHuqKg/vBu5nTjokcPX/AQHmvyNqpxoQ69pqERqKZjyzEW/QcXbsfB9FK
X-Received: by 2002:a05:6214:c4e:b0:696:36dc:4278 with SMTP id r14-20020a0562140c4e00b0069636dc4278mr1010672qvj.33.1711076299017;
        Thu, 21 Mar 2024 19:58:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711076299; cv=none;
        d=google.com; s=arc-20160816;
        b=W9YECr8HLc/vP5Da4LlfcHiSJDseO1is+5jnqZaateAEPYgcpWqKmZtLR/sEgz3Wu7
         WWu0a+RKOvie21BbBWxgRPjyJIXNHVEdxdgfNRN9Q++GCEN5xQQiMcapAhLy1uXU1IAY
         nrf84tBVoW+EeDxPytSeL8Z5PJ/fiIdTUX1fRCYvj7HNnOj3L1SiX8uvlb5Gh0gYNpvK
         0lbKb+U1h2huRBhlKxzeipcsXL9Pfyzzf6+WoGIwUfaKgB5IncJeOPvMU0CBW9ejc0f1
         4a6jy5r/omHFx3bFDHOGossyBBRdTFfzA6OnWbC/WMUWk6ftZQn+A5de3iGOcRUWu/i1
         mQpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=JDHbCWbZKvrw8WDHIvYZSK9IK8k6IQ7e7W6d7oZZvac=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=x2Fimdh579V9k/Z/HxCtguIy8v9R/M4ibVBcRFAwCV3LjrCO0Naf1hUKR2825L7eTF
         aZVjGPdM5NO9lZ6q2NakQAtXwA5kuF1j00GX9yOAlX4SRvaeeZGsvM8jqjUxWigGQHno
         hH9IesFG7GZuExSiOmIR16eQcs+LG3p4dKe4CwYT5E4IC25m5ZXbRwC3mo+t2Y1gde+I
         aO/wHYKem+EYZzai7Z2smUbFeH3CZvrlZFKY/zufe/r7uIkXrOTGu3+YXDloYFAcl8nL
         ZQWc8iMDvWe+sMujGmlzIWZswp8fols2k/ixFrovoq7vI4/rQWFg3Drmr5KMgY29631r
         EchQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id e6-20020a0562141d0600b0068ffe744a27si1237343qvd.63.2024.03.21.19.58.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 19:58:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-439-RdiqnbvQNcGTjmSncUTwgg-1; Thu, 21 Mar 2024 22:58:17 -0400
X-MC-Unique: RdiqnbvQNcGTjmSncUTwgg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0D23185A783
	for <blinux-list@gapps.redhat.com>; Fri, 22 Mar 2024 02:58:16 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id ED8C02166B4F; Fri, 22 Mar 2024 02:58:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B56A62166B35
	for <blinux-list@redhat.com>; Fri, 22 Mar 2024 02:58:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA7823C0BE34
	for <blinux-list@redhat.com>; Fri, 22 Mar 2024 02:58:15 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-21UTC9ptOKmFN1jxsvo4sQ-1; Thu, 21 Mar 2024 22:58:13 -0400
X-MC-Unique: 21UTC9ptOKmFN1jxsvo4sQ-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 8B5F61EFA64
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 22:54:24 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 847591EFA63
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 22:54:24 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [76.88.164.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id DB5401EFA62
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 22:54:23 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1rnV2z-00069p-2l
	for blinux-list@redhat.com;
	Thu, 21 Mar 2024 16:54:21 -1000
Date: Thu, 21 Mar 2024 16:54:21 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: Semantic Digital Audio Memory: A cognitive aid to boost the
 capabilities of your memory
Message-ID: <20240322025421.ofysp5vd4oswzqai@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <07d039e0-1a12-46ca-bd15-c2cc2a6d6866@protonmail.com>
MIME-Version: 1.0
In-Reply-To: <07d039e0-1a12-46ca-bd15-c2cc2a6d6866@protonmail.com>
X-Pobox-Relay-ID: 7D3CA6B6-E7F7-11EE-916D-25B3960A682E-04347428!pb-smtp2.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Hi Rastislav,

Great concept, seems very useful. In implementation it's a
tool for recording, marking and traversing lecture audio
with the special ability to review audio while
a recording is in progress.

It's interesting to think how I might implement these
functions in Nama[0,1] a terminal-based DAW that can already
mark and annotate recordings.  I have recently configured
function keys to more conveniently drop, tag and bump marks.
I did a technical writeup on using this functionality to
trim unwanted audio material from a longer recording.[2]

The review function would need another piece. Nama was
developed to manage one instance of the Ecasound audio
engine. I did some work on supporting multiple engines,
communicating via socket with each. Completing that could
be enough for me to implement the review function. That and
whether I could force ecasound to read a RIFF file during
recording when it lacks a RIFF header.

cheers and greetings


0. https://freeshell.de/~bolangi/cgi1/nama.cgi/00home.html
1. https://metacpan.org/dist/Audio-Nama/view/bin/nama
2. https://perladvent.org/2023/2023-12-18.html








On Wed, Mar 13, 2024 at 06:08:35PM +0000, 'Rastislav Kish' via blinux-list@=
redhat.com wrote:
> Hello everyone,
> I would like to share with you a project I had in mind for longer time du=
ring my university study, and which I finally got to work on in the recent =
months.
> While attending classes of theoretical mathematics, I=E2=80=99m usually f=
acing 3 problems:
>=20
> - I can=E2=80=99t write down notes and pay attention at the same time
> - Sometimes, I don=E2=80=99t get the context of the explained concept rig=
ht away, I need few moments to think it through or even lookup additional d=
etails in my notes or on the Internet. So, I either don=E2=80=99t do so and=
 end up just sitting in the class being unable to understand anything, beca=
use that concept was important for later topics, or, I do the lookup asynch=
ronously, what however means I get out of sync with the explanation and fin=
d myself in the same situation, except now I can=E2=80=99t do much with it.
> - If the class requires active work, my mind gets submerged in the proble=
m and can=E2=80=99t track anything in the physical world, resulting in shat=
tered context and missed information.
>=20
> Recording classes can fix all of these issues, however for the cost of do=
ubling the processing time for each class, since raw recordings don=E2=80=
=99t hold any information about their content and need to be listened throu=
gh in full to get a good-quality notes.
>=20
> Semantic audio
>=20
> SDAM lets you capture recordings with assigned meaning. In the simplest u=
sage, you can just start the recording and add a mark whenever something yo=
u will want to write down later is said, when the class is over, you can ju=
st return to those labels and quickly create the notes, you can be sure you=
 have covered everything important without the need to go through the whole=
 thing again. At the same time, those marks can serve as reference points, =
if you need to return in your memory to the part of your class dealing with=
 a particular topic, because you feel you may have missed something or just=
 want to hear it again, you can get to the relevant part in few clicks.
>=20
> Time travel
>=20
> However, SDAM also offers a different operation mode. If you have headpho=
nes with active noise cancellation technology, you can use it to travel in =
time during the class. After activating this function, the program will wor=
k in augmented reality mode, where you can hear what=E2=80=99s happening ar=
ound you. And if you don=E2=80=99t get something, need to research or simpl=
y mishear, there=E2=80=99s nothing simpler than pausing the time or rewindi=
ng it back, you will get to repeat the past events without missing on anyth=
ing that=E2=80=99s happening in the meantime, because everything is being r=
ecorded for you in the background. So when you=E2=80=99re done, you can sim=
ply continue listening to the class as it was happening while you were deal=
ing with other things, or, even increase the speed twice or triple to get i=
n sync again.
>=20
> The program is also equipped with a built-in notepad, so you can make use=
 of it to do your note-taking stuff, calculations and other textual operati=
ons.
>=20
> Saving your memory to a file
>=20
> When the class is over and you save everything, all the recorded audio, t=
aken marks and written notes is put into a single file, which can be afterw=
ards opened again in SDAM and act as a effective capture of your memory bac=
k from the class.
>=20
> This project is highly experimental, I=E2=80=99ve got all of the above me=
ntioned implemented, and I=E2=80=99m curious to see how are my ideas going =
to work in practice. Over the time, I would also like to add more functiona=
lity related to audio processing, like automatic transcription using Whispe=
r (that of course won=E2=80=99t work for math, but could give a decent enou=
gh starting point for more narrated topics), automatic silence detection an=
d removal (combined with timetravel, that could be a really interesting fun=
ction), and I have more cool stuff in mind. The idea is basically that SDAM=
 could become my all-in-one solution for working with audio classes, increa=
sing effectivity and saving time for more of the fascinating topics.
>=20
> If you find the idea interesting, you can learn more about the project in=
 it=E2=80=99s [GitHub repository](https://github.com/RastislavKish/sdam). I=
t=E2=80=99s free and open-source, as usual with my projects.
>=20
> Happy memory-hacking!
>=20
> Best regards
>=20
> Rastislav
>=20
> =E2=80=8B
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.

--=20
Joel Roth

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

