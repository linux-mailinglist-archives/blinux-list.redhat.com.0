Return-Path: <blinux-list+bncBCM2V5WE3MDBBTXO76XQMGQELV3JQGI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C09887C2A
	for <lists+blinux-list@lfdr.de>; Sun, 24 Mar 2024 10:50:08 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-69057317d23sf59832126d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 24 Mar 2024 02:50:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711273807; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hr9U8AC4aqj5TQ+xsX5+3TsX0p4EMHKOtk4j6xuYwdjaamfYkTmrpMutTtYuhRBfyw
         1hZeVWOMJ9x0bUqUcBDy46fl9+ja+itnmYJlaSkyMW3uOJvPycFjOHN0PW0ckDgvGeir
         PKMlIPA1cYIhtVZM9jAUGdrFn+MNZrS68ULM2usiZXzyK/H05TK21pEQGpBaNZmr644X
         WtlcgfZoHg78kJJhphTUU+5lWRyjvJNILTo9gdJywqxaVqWU4RxmpsxybVydnH2pXWix
         Gt8nrOwJb4E4EOtfvT+wv7WV6LZteygxlzphgZVqv38X6lBEmxHuFgVISoHiInJn3TWf
         T24Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=Awg9cQ6G5Kvn/VjSuT+LTt9AOi5i06Pb4d4GsxKlf+8=;
        fh=Xdpimy6uCe6dDCuh2jzv2K8Puf7xf9ObhZwZuKcZz7I=;
        b=c3crMqs7Pa/k9fduubYLn9j9uz2UfQU38LIpAMLvpJlqnK0AqgqYnH7/AkHAM/Ue3g
         yWWtgDlB5ggLxCAkzLSihXDsIxBKuOtM0xiELVSsnGXynLFEI/VcifATLAHBpM0DwcxS
         Zz/lteMoC/G4JAIXUpPCVLnC1xSpShG05i+ZMO0BiilmoXgl0ib306WX79Jc7vNl6eje
         VEhgllZpXfWNxsNS0Hyvn3dZy98FyEKOKSpUmFigq9pMEv9grINl6rsjjbin/4zGcVfI
         pcnwON508+4LiShWtfZ2kbeTDdN+0pyYzb8vFuMbHUYU7W+dU+1uxczi4sfll/u+EuSK
         b51w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711273807; x=1711878607;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Awg9cQ6G5Kvn/VjSuT+LTt9AOi5i06Pb4d4GsxKlf+8=;
        b=gjUEY8qAPcH5wKG3vU1KUYNb0kVs5xz612o8ImrhVkkqLGdmkRW1PnCv+QFvmakg6x
         AMK+akIMpyuokB6trvhZlnexWLo64tiBY4YFQ3zLH14PUI8YoSKMtxXDZOy4ggm1mpRc
         3OhzvhC/oPhX3CsUQ3hZnBhEto9jnxZXr0uAJLcf9EXJJ0bB4vmJDi65EMTPshff5mlC
         JGWo4r/OpyfGLp/hMDH116/vpcyrd8bDaEsX/2rFQ6Cw28oyI0Xg0618sfQGzzLlkEEZ
         5tMvGc9QW1HYi+zvR1JvV0pxMGMPSWRKKye0v6VtUv+mTmuVjiNHDwaWkaM8J7HKtOWP
         rihA==
X-Forwarded-Encrypted: i=2; AJvYcCUfwOggArgIkzmoW6RGGOgLhNe3v59iAx+DsgpbVYe8MHzIwS/lyvLK8qsY56LViRLsfOF5RZJVSu4MD1+geK/pjZs9DL9//Oxf
X-Gm-Message-State: AOJu0YyKjSUHuTCiBlCe8FIBDUaokWgDJ+AyY3mocLSEKfva2TiKBuOB
	1SP7/jeQXbFRXbqiSrtEDFWzh6NyOwPbESg1czPoik8zj25wbyOcfVC7vNd/tyY=
X-Google-Smtp-Source: AGHT+IHuVX428/vLdphhNdEY57IWD4MOgpDGNYX1T/Eb9NLQtXXjirteMqT2ZN4YZpvUu5tWIDAVYA==
X-Received: by 2002:a05:6214:f23:b0:696:8806:12a3 with SMTP id iw3-20020a0562140f2300b00696880612a3mr1341014qvb.0.1711273806638;
        Sun, 24 Mar 2024 02:50:06 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fca6:0:b0:696:7522:f691 with SMTP id h6-20020a0cfca6000000b006967522f691ls104219qvq.2.-pod-prod-06-us;
 Sun, 24 Mar 2024 02:50:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCvNVWogLZg2GRCeRy8g92hVRqekVrOCiw5mCKH7Kv+kUDmUQ0SLEZZoPNR43eTmqHxuD1ATEPOkudregUwcDNGs2V7OBZLYkydK5M
X-Received: by 2002:ae9:ea12:0:b0:789:dd4a:4633 with SMTP id f18-20020ae9ea12000000b00789dd4a4633mr4194146qkg.72.1711273805459;
        Sun, 24 Mar 2024 02:50:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711273805; cv=none;
        d=google.com; s=arc-20160816;
        b=Yq7eeMjAThBMYuV+kS45D/h4jWZvliX5u7zM2N8Q7NUzwhs1zVtV1ez5ZoEVmQmY//
         Cc8P7z1UeYkIo13drqIAe1lZ1e8JLyQ19A/9J0tEJVdrhrcb+yV34+oVkeHTd+yHExjO
         W6PQuNSP+jr62OOPiAGatSQ3detRLxTEEey4Ko5pdJ3gLL5KPAQbEiMaHGMsPhW+/W3k
         4s6+/YH0XD3L0bxdQrNMBlVd/h0/7bklnLPrTDCmwrpebjoSCbYnjIsj5ObngPROHEkF
         oG2bI1DvP7EIchp4at3dbOKOkTPKac2y/s1zW5rijJUHTcB+ja3U93kxezOKsMocHdsW
         0wPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=aDpKK+GznlMHYdAboKW5+Go537Yudh8CQc6OazyMPKg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=JCK9Ye5a1PQo5m4gj3/kngZrF3VE9T1XLn5oJXDAgBWqoexePKznjPOFYDubVTRWlV
         AckPNb80YYXNRn9s2LjjaD+wj1dPXJVGWELub2LPL0G3yY+ww884m6J1QFGf5EqTL3Q1
         lO++8lT8Tbdr77GACuoHKmw+LEDwZEtMk5Rikrh5o6j48SUDYWlnoMqibp4pVpxp+1QB
         Lk0fyE70/OWedRG7X8UzfRzE1MwwtYVDwD2+hSk/ja2ne+xCaNYk0K+DSbDjmD54NKq5
         FISDTdFy+R2STpRAKHClsrINhR+ExIzXOF1JGEFxDWPm7U7kfuTIhmdag+gKYJ7Cv6bz
         iY4g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id e17-20020a05620a209100b0078a54b11db3si373633qka.283.2024.03.24.02.50.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 02:50:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) client-ip=185.70.41.104;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-31-WhYBgScQP7i5NAER6YcWbw-1; Sun, 24 Mar 2024 05:50:03 -0400
X-MC-Unique: WhYBgScQP7i5NAER6YcWbw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A7FC811E81
	for <blinux-list@gapps.redhat.com>; Sun, 24 Mar 2024 09:50:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 36969111E408; Sun, 24 Mar 2024 09:50:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F4022112131D
	for <blinux-list@redhat.com>; Sun, 24 Mar 2024 09:50:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9FE14800262
	for <blinux-list@redhat.com>; Sun, 24 Mar 2024 09:50:02 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-296-s4RekKEWMcWEh8bJ1RA4TQ-1; Sun, 24 Mar 2024 05:50:00 -0400
X-MC-Unique: s4RekKEWMcWEh8bJ1RA4TQ-1
Date: Sun, 24 Mar 2024 09:49:41 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Semantic Digital Audio Memory: A cognitive aid to boost the capabilities of your memory
Message-ID: <517cbe46-f121-41d1-b4f9-b3459b5c5f7f@protonmail.com>
In-Reply-To: <20240322025421.ofysp5vd4oswzqai@sprite>
References: <07d039e0-1a12-46ca-bd15-c2cc2a6d6866@protonmail.com> <20240322025421.ofysp5vd4oswzqai@sprite>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted
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

Hello Joel,
basically, yes and no. SDAM indeed does have features you would=20
typically find in a DAW, so from this standpoint, it is similar to one.
However, at the same time, the point lies in how is the audio treated=20
after it had been taken, i.e. how it's presented to the user, how is it=20
capable of relating and providing information, and eventually, how well=20
is it capable to help with accurate recalling. This process embraces=20
more components than what you would usually find in a DAW, with the=20
emphasis being put rather on the information and meaning the audio=20
carries than the way the audio sounds, i.e. that's why the project is=20
called Semantic Digital Audio Memory.
So yes, techniques absolutely are similar, and there is a certain=20
functional overlap, though at the same time, the purposes are very=20
different and it's likely best for each tool to specialize in serving=20
what its users are expecting it to do most well.

Best regards

Rastislav

D=C5=88a 22. 3. 2024 o 3:54 Joel Roth nap=C3=ADsal(a):
> Hi Rastislav,
>
> Great concept, seems very useful. In implementation it's a
> tool for recording, marking and traversing lecture audio
> with the special ability to review audio while
> a recording is in progress.
>
> It's interesting to think how I might implement these
> functions in Nama[0,1] a terminal-based DAW that can already
> mark and annotate recordings.  I have recently configured
> function keys to more conveniently drop, tag and bump marks.
> I did a technical writeup on using this functionality to
> trim unwanted audio material from a longer recording.[2]
>
> The review function would need another piece. Nama was
> developed to manage one instance of the Ecasound audio
> engine. I did some work on supporting multiple engines,
> communicating via socket with each. Completing that could
> be enough for me to implement the review function. That and
> whether I could force ecasound to read a RIFF file during
> recording when it lacks a RIFF header.
>
> cheers and greetings
>
>
> 0. https://freeshell.de/~bolangi/cgi1/nama.cgi/00home.html
> 1. https://metacpan.org/dist/Audio-Nama/view/bin/nama
> 2. https://perladvent.org/2023/2023-12-18.html
>
>
>
>
>
>
>
>
> On Wed, Mar 13, 2024 at 06:08:35PM +0000, 'Rastislav Kish' via blinux-lis=
t@redhat.com wrote:
>> Hello everyone,
>> I would like to share with you a project I had in mind for longer time d=
uring my university study, and which I finally got to work on in the recent=
 months.
>> While attending classes of theoretical mathematics, I=E2=80=99m usually =
facing 3 problems:
>>
>> - I can=E2=80=99t write down notes and pay attention at the same time
>> - Sometimes, I don=E2=80=99t get the context of the explained concept ri=
ght away, I need few moments to think it through or even lookup additional =
details in my notes or on the Internet. So, I either don=E2=80=99t do so an=
d end up just sitting in the class being unable to understand anything, bec=
ause that concept was important for later topics, or, I do the lookup async=
hronously, what however means I get out of sync with the explanation and fi=
nd myself in the same situation, except now I can=E2=80=99t do much with it=
.
>> - If the class requires active work, my mind gets submerged in the probl=
em and can=E2=80=99t track anything in the physical world, resulting in sha=
ttered context and missed information.
>>
>> Recording classes can fix all of these issues, however for the cost of d=
oubling the processing time for each class, since raw recordings don=E2=80=
=99t hold any information about their content and need to be listened throu=
gh in full to get a good-quality notes.
>>
>> Semantic audio
>>
>> SDAM lets you capture recordings with assigned meaning. In the simplest =
usage, you can just start the recording and add a mark whenever something y=
ou will want to write down later is said, when the class is over, you can j=
ust return to those labels and quickly create the notes, you can be sure yo=
u have covered everything important without the need to go through the whol=
e thing again. At the same time, those marks can serve as reference points,=
 if you need to return in your memory to the part of your class dealing wit=
h a particular topic, because you feel you may have missed something or jus=
t want to hear it again, you can get to the relevant part in few clicks.
>>
>> Time travel
>>
>> However, SDAM also offers a different operation mode. If you have headph=
ones with active noise cancellation technology, you can use it to travel in=
 time during the class. After activating this function, the program will wo=
rk in augmented reality mode, where you can hear what=E2=80=99s happening a=
round you. And if you don=E2=80=99t get something, need to research or simp=
ly mishear, there=E2=80=99s nothing simpler than pausing the time or rewind=
ing it back, you will get to repeat the past events without missing on anyt=
hing that=E2=80=99s happening in the meantime, because everything is being =
recorded for you in the background. So when you=E2=80=99re done, you can si=
mply continue listening to the class as it was happening while you were dea=
ling with other things, or, even increase the speed twice or triple to get =
in sync again.
>>
>> The program is also equipped with a built-in notepad, so you can make us=
e of it to do your note-taking stuff, calculations and other textual operat=
ions.
>>
>> Saving your memory to a file
>>
>> When the class is over and you save everything, all the recorded audio, =
taken marks and written notes is put into a single file, which can be after=
wards opened again in SDAM and act as a effective capture of your memory ba=
ck from the class.
>>
>> This project is highly experimental, I=E2=80=99ve got all of the above m=
entioned implemented, and I=E2=80=99m curious to see how are my ideas going=
 to work in practice. Over the time, I would also like to add more function=
ality related to audio processing, like automatic transcription using Whisp=
er (that of course won=E2=80=99t work for math, but could give a decent eno=
ugh starting point for more narrated topics), automatic silence detection a=
nd removal (combined with timetravel, that could be a really interesting fu=
nction), and I have more cool stuff in mind. The idea is basically that SDA=
M could become my all-in-one solution for working with audio classes, incre=
asing effectivity and saving time for more of the fascinating topics.
>>
>> If you find the idea interesting, you can learn more about the project i=
n it=E2=80=99s [GitHub repository](https://github.com/RastislavKish/sdam). =
It=E2=80=99s free and open-source, as usual with my projects.
>>
>> Happy memory-hacking!
>>
>> Best regards
>>
>> Rastislav
>>
>> =E2=80=8B
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
> --
> Joel Roth
>
> --
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

