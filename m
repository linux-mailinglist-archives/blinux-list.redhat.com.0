Return-Path: <blinux-list+bncBCM2V5WE3MDBBAXJ76XQMGQEKLWNZ2Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 138A1887C1F
	for <lists+blinux-list@lfdr.de>; Sun, 24 Mar 2024 10:38:12 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-430b7aa0f0asf37101401cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 24 Mar 2024 02:38:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711273091; cv=pass;
        d=google.com; s=arc-20160816;
        b=h8cBaWbo0TZb9JyQvZdL+Bjs591z4xFJ/U3S8WG9Q1SeooN8mKXmeAn2YLazmAElV4
         7YmxH/pDFHHe+2oHObRtGF+Gxi3/6/QxNv++f7rx/oDwRfcIkmKJ1Ctp5eHeSqYxvm5s
         0dmkSXaTLcPKpM8zs+GKaAfHZmpaHc6VJWOn3GBbQf7yJavZ9I/ERbcdp4C9s/dVCrwW
         5zG+bac5UIzvinAivBJ2pm5KsVIwfs+wfIzL3EnVVwOTmfAQFHmeCPRFionfOIty3IRs
         6GF/r9pEOKwsN6lVVpgjAgMNam0DKcR9VJtRfSB7/Vb9Qt9SZSF9bUQ6R14ZO3uOgNgU
         sKaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=6ZkzyVXS6cIrFeyT8GBzVjU1ohMZf6dbr46jDG2hyVw=;
        fh=K/rq8Ogiahum1BTD7oRRmypS6a98CVOHcD4d0SirqIA=;
        b=VVdaXWPUt8DtXfhBOrS8eVI/iNL2wzO8TVuZJHDy6Dvnu9qaQu8/gTh2zHmv4h7YEV
         88u0iKkSrTXYozuQ1p7/o/llCuk1gL4mjIvY651BNYK6qhzddqa8AgHt081qVj37WX2O
         Op80AxQxy2aCHsWvkE+TJzEiRjNHb/jxMrlnsz6WFIjyPkAhZRMOVzyeGqqMYHFqo3JN
         7YHiiH6wmfbuSsEJJUM2slU7EqAhE+xbgVizWbCXS+A9ij5KS12wyrtIkvpg9Akp/kKY
         lmlav2/Gepewab1PQldDQ9MddN94wZR83YgCg6HVYDvpZ+ECbMGJ9XH9MTDcTu5Mk7Yb
         GnpQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711273091; x=1711877891;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ZkzyVXS6cIrFeyT8GBzVjU1ohMZf6dbr46jDG2hyVw=;
        b=FSVustJEeo0ALH0IYp1S3yGo/kslN7q4roRNwYh6u0FvNA6FqVwQ0dPcyIJrkL6pge
         E69ul+sIwYvPcXBqpyzrrx/tEE9yJhrpuNTXf4mp51s8fDJ5jZy81h0mphwj9hZdWSCv
         t1SXZknYbzjFIYnG2oEiSJw7d69imQAbS5ymTf4JxkE/S3fnhufMXfKa64i+VK0eir2u
         XacfdwQ823G0E6DhqOSqd5hONWnB8OXpEJ5MJmRAlXu3HZNm3JZb/csUMRuaERpYnJzb
         fFD1xIYPm7bqV913vfa8bpduvR5GdT8LdOqZUnC56+xY0ecuCRWHlekX7ye1n2f8cfxh
         IvKg==
X-Forwarded-Encrypted: i=2; AJvYcCUWXOWGEMmafn2wfFfis98mYN5mge2FcdSxwOMQzPhW9dE/en0PJAXlF0DhYT+Dfaq6b30aY3ZffqM3cBHEEM1v1vJNTSWABTd1
X-Gm-Message-State: AOJu0YyTuap81VpZi5QYEQJ6OOw91XLfMV8wVSp9j1/Eh2cxlXKixH82
	2uJqeL5CU4B02IR9o8PdMb4TNG1IzIpmCHyhwvcAzqAp8J5kGWJCD0mmrMYtWXk=
X-Google-Smtp-Source: AGHT+IGH8opw28uPCuB9ifD2MFmdfW8Bg36Enh3gLlCtWryJ8FfA+sUGpsIG7VN7XDIE82o8Wz2LXg==
X-Received: by 2002:a05:622a:15c8:b0:431:4cee:417 with SMTP id d8-20020a05622a15c800b004314cee0417mr1975484qty.47.1711273090415;
        Sun, 24 Mar 2024 02:38:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d0e:0:b0:431:1e71:a57d with SMTP id f14-20020ac85d0e000000b004311e71a57dls5252048qtx.2.-pod-prod-02-us;
 Sun, 24 Mar 2024 02:38:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVBWOkDhrrTFNczazRCuODUpBSu504dkdmStYZ8XC0yIDfQlWOdqKSObPNnrHOK2/MjVxc+2M4RirOe8J1ytPNqkYjvv1ze5MezJDCV
X-Received: by 2002:a05:622a:54d:b0:430:c07d:632b with SMTP id m13-20020a05622a054d00b00430c07d632bmr4936994qtx.21.1711273089331;
        Sun, 24 Mar 2024 02:38:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711273089; cv=none;
        d=google.com; s=arc-20160816;
        b=qg0spIOSf/4NvoZZsMD83dzhm/LKcW3jEdwJXRsRoitd9EwWQqrieX3T2GQsH1Esoj
         BXFoFcjxwQoCsG4jtjNWcuUJQWKu7lO3D1YrGkdGNrTcFJt8C8fsuYhv3QwlZOJWgeJj
         pHSHHLUjgUsg30NTf2IAj1g7C6mjYhNs4sp6m+/xtafWdkfWs38yuoqJHmJgtXsnAKCo
         pFibDA+pV4l+fRPvJpWt5JCmlJXpRrENJlVRriTHrbaO+uSL0XEKchQjEtQE53ADsSqf
         G1xwgozVCflpREEmn3IWNVDZ97cSUQwHCl1eXRijA331K403ujXyaJtwagxBizbxl0sm
         j8HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=W6BvX04mwma0xNkHu5VQM5PD9qwB04nslXUZgQkghvM=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=noVdQKzV8EJNBML8aKVFt/Swyp59eKVKq08oEPwlwlMJGYRed4g0RquSF/h9d0QNMm
         a0m7f+xchsqqxSe6zFXnDOo/yVOQu3ZdSrQ9HADnbAcq3MXEe9pDZHgCGBW3+Qogbh9z
         Y4t+Y1hct+4nKzlvDe+8O/pB/sQSS6DYYWoPRmOpruo2FPdhcj/FhOp9iaY9/Yjv/wsr
         R6+rarNgtg9UFLmLky16a4SoP1ds6OpTWe7CEjFP3MCf8Ixx8koYzHnRCdk0+A0UFEgh
         vxS5aAkbCblMmfbXB48FaCsbP/kTjl/cdzVCvWs5IlHCzGCKIRs/7qT4KqBhvURx7QLV
         biEQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id bl6-20020a05622a244600b004311dc250cdsi3209297qtb.735.2024.03.24.02.38.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 02:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) client-ip=185.70.41.103;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-696-ydzcjLbOPi2XMhEwjBg4NA-1; Sun, 24 Mar 2024 05:38:07 -0400
X-MC-Unique: ydzcjLbOPi2XMhEwjBg4NA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7EE34800262
	for <blinux-list@gapps.redhat.com>; Sun, 24 Mar 2024 09:38:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7B76B2022C1D; Sun, 24 Mar 2024 09:38:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46CC0200A3BB
	for <blinux-list@redhat.com>; Sun, 24 Mar 2024 09:38:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBE81299E757
	for <blinux-list@redhat.com>; Sun, 24 Mar 2024 09:38:06 +0000 (UTC)
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-416-YUQITo56NDm-uZVWLEMMNw-1; Sun, 24 Mar 2024 05:38:03 -0400
X-MC-Unique: YUQITo56NDm-uZVWLEMMNw-1
Date: Sun, 24 Mar 2024 09:37:52 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Semantic Digital Audio Memory: A cognitive aid to boost the capabilities of your memory
Message-ID: <32168ff4-f2cb-4083-ba7d-e7742c4d3075@protonmail.com>
In-Reply-To: <ZfrOqWInkBVAz5pQ@rednote.net>
References: <07d039e0-1a12-46ca-bd15-c2cc2a6d6866@protonmail.com> <ZfrOqWInkBVAz5pQ@rednote.net>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted
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

Hello Janina,
thanks for the awesome feedback!
Yes, using the soundcard loopback as the audio source is definitely=20
something I would like to implement, exactly for the reasons you=20
mention. Right now the situation over sound IO is bit... interesting,=20
since Windows has apparently a different logic of approaching computer=20
audio (what sense does it make to have the microphone enforce a=20
different sampling rate than speakers? ?? )
But I absolutely want to get into it, as soon as I figure out a=20
non-messy way to deal with Microsoft ideas.

By the way, when it comes to controlling SDAM, I got quite inspired by=20
the keyboard layout introduced by Orca flat review.
I.E. you have three controlling triplets of keys - UIO, JKL and M Comma=20
Dot, the top-one controls rate, the middle lets you seek and pause/play,=20
while the bottom-one allows you to control markers.
You can either focus the next/previous (relative to the last focused),=20
the next/previous closest one (i.e. relative to your position) and you=20
can also jump to the last focused marker by pressing Ctrl+Comma, or move=20
it to the current playback position or assign it a label.

Regarding audio editing, this is an interesting topic. I absolutely do=20
want to introduce some forms of edits, for example, automatic silence=20
removal. That could be very useful, since at least on math classes,=20
there are often rather large portions of nothing while the professor is=20
writing down formulas, proofs, or while the students calculate an=20
assignment on the chalkboard during exercise classes.

However. SDAM is, in its core idea, supposed to work like human memory.=20
What does that mean in practice? Right now, when you have a recording=20
from which you do a transcript, you have two different resources, which=20
are describing the same thing, but otherwise they're mostly independent=20
and you treat them like linear resources (that means, if you want to=20
find something, you skim through from left to right or from top to bottom).
However, human memory works differently. Human memory is a network=20
connecting thoughts, transcripts and audio cues. If you listened to=20
let's say a podcast about Jupyter notebooks accessibility and there was=20
a part dealing with Orca, in your mind, you don't need to speed-listen=20
to the whole event nor roll your eyes/ears through the transcript to get=20
to the Orca part, you can simply bring yourself in your imagination=20
directly to the Orca related stuff, no detours necessary.

And this is basically also my vision for SDAM. To make it create a=20
network of audio, meanings and texts, where you could easily move=20
directly to the relevant parts of whichever resource you're interested in.

Therefore, yes, I do get what you mean by excluding the formal social=20
parts, etc. and it is something that may be possible to do eventually,=20
however, if I manage to fulfil the SDAM as I imagine it to be, then=20
these operations basically shouldn't be necessary, since you should=20
never need to be skimming through them unles you would explicitly want=20
to. Similar to how you don't need to delete them from your brain and can=20
still work with your memories efficiently.

Markers are one piece of puzzle for achieving this goal, but not the=20
only-one, there are more that should eventually build up the network, in=20
the form I currently am imagining them to be, most should operate either=20
completely automatically or, fit to the routine you already do while=20
transcribing.

To be honest, I'm myself curious where this goes and what is possible to=20
achieve.

Best regards

Rastislav

D=C5=88a 20. 3. 2024 o 12:55 Janina Sajka nap=C3=ADsal(a):
> Dear Rastislav:
>
> I am delighted by this project outline from you. May I suggest that live
> recording isn't the only use case? One might be listening to a webinar,
> podcast, and audio or ebook, or even a musical composition and experience=
 the need to drop
> markers in the content for later access.
>
> Another thought about markers ... It seems to me that one would
> frequently realize the importance of what is being said somewhat into
> the discussion, not at the head of the discussion. So, the bookmarks may
> frequently not be at the beginning of the discussion, but part-ways in.
> So, being able to move a marker afterwards might be valuable!
>
> Another use case, imo, would be to replay some portion, e.g. from marker
> a to marker b. I don't know about you, but I find I learn more on
> hearing something a second, third, and even fourth time
> Another use case, imo, would be to replay some portion, e.g. from marker
> a to marker b. I don't know about you, but I find I learn more on
> hearing something a second, third, and even fourth time. In music this
> becomes very, very useful, especially if one can apply time-scale
> modification to slow the music playback.
>
> I suppose a certain amount of editing after the recorded event occur
> realtime would be useful, too. One might want to excise all the "Welcome
> everyone, isn't this a nice day, and how lovely of you to come and talk
> with us" kind of social nicities from the recording one is accessing.
> Even with bookmarks to the meatier discussion present, these kinds of
> deletions might be useful.
>
> So, yes please. I'd love to try this tool! I expect I might use it quite
> a lot!
>
> Best,
> Janina
>
> 'Rastislav Kish' via blinux-list@redhat.com writes:
>> Hello everyone,
>> I would like to share with you a project I had in mind for longer time d=
uring my university study, and which I finally got to work on in the recent=
 months.
>> While attending classes of theoretical mathematics, I???m usually facing=
 3 problems:
>>
>> - I can???t write down notes and pay attention at the same time
>> - Sometimes, I don???t get the context of the explained concept right aw=
ay, I need few moments to think it through or even lookup additional detail=
s in my notes or on the Internet. So, I either don???t do so and end up jus=
t sitting in the class being unable to understand anything, because that co=
ncept was important for later topics, or, I do the lookup asynchronously, w=
hat however means I get out of sync with the explanation and find myself in=
 the same situation, except now I can???t do much with it.
>> - If the class requires active work, my mind gets submerged in the probl=
em and can???t track anything in the physical world, resulting in shattered=
 context and missed information.
>>
>> Recording classes can fix all of these issues, however for the cost of d=
oubling the processing time for each class, since raw recordings don???t ho=
ld any information about their content and need to be listened through in f=
ull to get a good-quality notes.
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
rk in augmented reality mode, where you can hear what???s happening around =
you. And if you don???t get something, need to research or simply mishear, =
there???s nothing simpler than pausing the time or rewinding it back, you w=
ill get to repeat the past events without missing on anything that???s happ=
ening in the meantime, because everything is being recorded for you in the =
background. So when you???re done, you can simply continue listening to the=
 class as it was happening while you were dealing with other things, or, ev=
en increase the speed twice or triple to get in sync again.
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
>> This project is highly experimental, I???ve got all of the above mention=
ed implemented, and I???m curious to see how are my ideas going to work in =
practice. Over the time, I would also like to add more functionality relate=
d to audio processing, like automatic transcription using Whisper (that of =
course won???t work for math, but could give a decent enough starting point=
 for more narrated topics), automatic silence detection and removal (combin=
ed with timetravel, that could be a really interesting function), and I hav=
e more cool stuff in mind. The idea is basically that SDAM could become my =
all-in-one solution for working with audio classes, increasing effectivity =
and saving time for more of the fascinating topics.
>>
>> If you find the idea interesting, you can learn more about the project i=
n it???s [GitHub repository](https://github.com/RastislavKish/sdam). It???s=
 free and open-source, as usual with my projects.
>>
>> Happy memory-hacking!
>>
>> Best regards
>>
>> Rastislav
>>
>> ???
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
> --
>
> Janina Sajka (she/her/hers)
> Accessibility Consultant https://linkedin.com/in/jsajka
>
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
>
> Linux Foundation Fellow
> https://www.linuxfoundation.org/board-of-directors-2/
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

