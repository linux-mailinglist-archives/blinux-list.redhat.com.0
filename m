Return-Path: <blinux-list+bncBCWIB27NVECBBL455OXQMGQETOILGQY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9A388115E
	for <lists+blinux-list@lfdr.de>; Wed, 20 Mar 2024 12:55:29 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-430c139c096sf45849531cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 20 Mar 2024 04:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710935728; cv=pass;
        d=google.com; s=arc-20160816;
        b=rHwqCND4o1EgDB6hxhKKi3gvHyDOoCQqex6C6/5z4FeTd6cUGgfpfZyI1WmESSp0Q/
         Oaqy9E085NXBRKPq1oOoBgK2mZZ4GXwiXxdEu9ZJK3Ut8cLkFkaVIG1Ulq+0/7yo2A+f
         ssff9UYVQOuEr1rkghVpH31TeR5Awvr45T9CEghRqTxzF6MgwwnfeKAj1S9JTjc+KyYe
         pS1xzLYGFEXz/Fp3oXzT+nGhvYtgzAncymduH3pTdY3WdAMrVasAl3zgNXqRIQF4RK4r
         Q/CUwcdfMfuQLv4+1h654bi6rWbxE2A7FUQTfXlfnTztTt5Z1Wjt6MiVWBAnUkTHYtZi
         GXwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:reply-to
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=YehDCuWwslLxeoNKRt5JvTrLALAkFip3WJimKUhQ70M=;
        fh=JjGTKfQFBapCYt4K8U1U1/0RadiMesMG3aQUKYBGWso=;
        b=EiXUOFWvALLHydEO9Ktb1cMtxAccc3tvfyWqodyKKNh8OgIa9kzEOD5JYt2b5LSqxO
         QiBiW1uACacNzI7pvXyl+yVqhRdvxFEvWuEAnFDak6cpfHfAwG7ySkRncX6c6HKMJ4oQ
         hdFsD1lkVm2Ia2ylHbnmAOcJtbg4+zHbtUjhFrAvgXvyuTJ9AyFh/B7htZHEvYag7Gxa
         yPkhUdnXebGFh5Gy9gG1WxH8d0m3PkS4ncTEr6OQJiRKeh0yqE2EY+qdzP9lpGWxvJrf
         S9t09sKI2dV1O1Ri/ViRvQf8pFfxScIOKvLNiLBnsSTZKeZSgX1kdIMEDWlnvQfIvz5V
         5Rlg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710935728; x=1711540528;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :content-transfer-encoding:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YehDCuWwslLxeoNKRt5JvTrLALAkFip3WJimKUhQ70M=;
        b=oWcDKOw90ueoa3RVM21VbJUIUV2CjnkqXN1Y9XAWioTQwV2uGBwi5nWH7y+7BggDZh
         oT1vD9226ZcCu9G+uquQm8XDVqSh8JMrEC8BtWuzXbix7aBV90/MpZp/HAN34tOFiC1k
         f5Ayj0/6iAgUt3M9kY1y8Up3QJoTd1Grg7zVqq/qpt9p3Uer8LRLCcoFefSHwEIP9YHw
         1qSWhtRlSjvty5j1a/vU756XP+10HIIwlEtUMkQJEGy1JKiLr3534VQSzoknozaeEXnJ
         D/w0M4694zSE8eh6oOogoqgubX3gbxk55L/9rFRfYFNJ7fqVycF1WIUHh4kZwfP4XdH7
         MHwg==
X-Forwarded-Encrypted: i=2; AJvYcCX4toAux1yFxhL0oju6gzGVCmkGngnngDT5Gn6yAq2BBmERtIvQ5rZRHnkmzPZYk7JvXKpCI9nVae8Bhzlf0sezCDcAxGJh+OLk
X-Gm-Message-State: AOJu0YyDfnAIvLPYfh9Z9dmtzOoCn19YUx1WZZUTzAL1QyDfzMaRcWlL
	9WS/sDG227NjojTgYLk809EcrmvA3W5DtVtnZw9VqwdZlBB82LzXCvD0TTzGrb8=
X-Google-Smtp-Source: AGHT+IE2horw2OlKxSWA6EXC5afw7/5lqrt/BQ8+oKcGAO08RMGWnoYpY7Ih6QHYDm76NDDgbG1m8Q==
X-Received: by 2002:a05:622a:1904:b0:430:caf4:5bba with SMTP id w4-20020a05622a190400b00430caf45bbamr11857555qtc.2.1710935727899;
        Wed, 20 Mar 2024 04:55:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1b06:b0:431:14e9:5e5f with SMTP id
 bb6-20020a05622a1b0600b0043114e95e5fls314365qtb.2.-pod-prod-02-us; Wed, 20
 Mar 2024 04:55:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWHOFwIOY9FHWBrPtGzC85Rluz327aONRlXCi6zZtvgHejMoxvmRtSoSb8p0FK+Kq6E9aymQ8A14GBsZGfwtjwc9nLEjjgjXyX4E1yF
X-Received: by 2002:ac8:5783:0:b0:430:d6ad:f8ee with SMTP id v3-20020ac85783000000b00430d6adf8eemr8386840qta.50.1710935726942;
        Wed, 20 Mar 2024 04:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710935726; cv=none;
        d=google.com; s=arc-20160816;
        b=dWEYZXKlRv6PiErsa0RYK2w4q3adhJOyxyLk1rfMo5Ark36CDfWB483M4RuAWGUKGl
         LEnAgV8zJCk84dc6q71sLKRvfxIFybBEhgKeto9C4WVJzISSx7kDBd2zMhNda/HLcf2r
         /+tMTaYNapnVucvF8SRZPuAONPBp4YwTkxbqz/4oxDyURhmic9R/0I+qPz2WQiNjIKPT
         VIwHS3DHKLpUcz+9Qqb8Aw69hEVdP4N9DfUJGP69GNWBQvuDY1quKfNEjOFHyCtHO5dY
         OsuFGRejcRwg3ij8aOykZIYX+q/obuyiTdbvWdZ/h0c6D6pM/0Hs4Min8NLpB7Yk0opc
         GVOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=a0g0tjHJq07HoPddFMFmewi0++RcjuZGGQUIVCMPdR4=;
        fh=fH8a4lfLeqjuUrgBmtPKNRAuTgZRbLa/nO/G3widhbs=;
        b=p1PJcDY9edp3tV049QA4i+iTAzsN+kc2hP/AUMTrjNFiHRS/b6jxXBNWYCpHXWZjEA
         ctmzwtFR2+85EMg418CUd4RCPs8ddXkjeHPlgMC8/lqAKcFkqcySnNKAi5oFOPmeNJIU
         AmOnEuC/LDjVpNOLw0QqaOb6jP8EQJXUJoETg9wCSuc0VERuPhnz49OCJpYvQS7CTU04
         XRJmxU/GtlGMo6TOTYvFkgmj9TGRjpryV1LmdFtkFRRYyIabpVND4SrXZufunddhvnvB
         U5742iP2VmGIPMul7NpMx+ymLMyx7YBbDFyP6mAy3woS7h/XlOpSa3AHGtALKl5fEm5F
         IbKA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id e1-20020a05622a110100b0042eed7ae815si9168031qty.740.2024.03.20.04.55.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 04:55:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) client-ip=66.228.34.147;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-564-_nYxnqUwNe2k2ga3s5UyXg-1; Wed, 20 Mar 2024 07:55:25 -0400
X-MC-Unique: _nYxnqUwNe2k2ga3s5UyXg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFD118007AF
	for <blinux-list@gapps.redhat.com>; Wed, 20 Mar 2024 11:55:24 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DCA6E492B6E; Wed, 20 Mar 2024 11:55:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4FE5492B6D
	for <blinux-list@redhat.com>; Wed, 20 Mar 2024 11:55:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 546CE1018985
	for <blinux-list@redhat.com>; Wed, 20 Mar 2024 11:55:24 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-636-ZpMhFzWmPJiJdQJ9QehNZQ-1; Wed,
 20 Mar 2024 07:55:22 -0400
X-MC-Unique: ZpMhFzWmPJiJdQJ9QehNZQ-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id A8E25FA020;
	Wed, 20 Mar 2024 07:55:21 -0400 (EDT)
Received: (from janina@localhost)
	by opera.rednote.net (8.17.2/8.16.1/Submit) id 42KBtLP7235001;
	Wed, 20 Mar 2024 07:55:21 -0400
Date: Wed, 20 Mar 2024 07:55:21 -0400
From: "'Janina Sajka' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: Rastislav Kish <rastislav.kish@protonmail.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Semantic Digital Audio Memory: A cognitive aid to boost the
 capabilities of your memory
Message-ID: <ZfrOqWInkBVAz5pQ@rednote.net>
References: <07d039e0-1a12-46ca-bd15-c2cc2a6d6866@protonmail.com>
MIME-Version: 1.0
In-Reply-To: <07d039e0-1a12-46ca-bd15-c2cc2a6d6866@protonmail.com>
X-Operating-System: Linux opera.rednote.net 6.7.9-200.fc39.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: rednote.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: janina@rednote.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Original-From: Janina Sajka <janina@rednote.net>
Reply-To: Janina Sajka <janina@rednote.net>
Content-Transfer-Encoding: quoted-printable
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

Dear Rastislav:

I am delighted by this project outline from you. May I suggest that live
recording isn't the only use case? One might be listening to a webinar,
podcast, and audio or ebook, or even a musical composition and experience t=
he need to drop
markers in the content for later access.

Another thought about markers ... It seems to me that one would
frequently realize the importance of what is being said somewhat into
the discussion, not at the head of the discussion. So, the bookmarks may
frequently not be at the beginning of the discussion, but part-ways in.
So, being able to move a marker afterwards might be valuable!

Another use case, imo, would be to replay some portion, e.g. from marker
a to marker b. I don't know about you, but I find I learn more on
hearing something a second, third, and even fourth time
Another use case, imo, would be to replay some portion, e.g. from marker
a to marker b. I don't know about you, but I find I learn more on
hearing something a second, third, and even fourth time. In music this
becomes very, very useful, especially if one can apply time-scale
modification to slow the music playback.

I suppose a certain amount of editing after the recorded event occur
realtime would be useful, too. One might want to excise all the "Welcome
everyone, isn't this a nice day, and how lovely of you to come and talk
with us" kind of social nicities from the recording one is accessing.
Even with bookmarks to the meatier discussion present, these kinds of
deletions might be useful.

So, yes please. I'd love to try this tool! I expect I might use it quite
a lot!

Best,
Janina

'Rastislav Kish' via blinux-list@redhat.com writes:
> Hello everyone,
> I would like to share with you a project I had in mind for longer time du=
ring my university study, and which I finally got to work on in the recent =
months.
> While attending classes of theoretical mathematics, I???m usually facing =
3 problems:
>=20
> - I can???t write down notes and pay attention at the same time
> - Sometimes, I don???t get the context of the explained concept right awa=
y, I need few moments to think it through or even lookup additional details=
 in my notes or on the Internet. So, I either don???t do so and end up just=
 sitting in the class being unable to understand anything, because that con=
cept was important for later topics, or, I do the lookup asynchronously, wh=
at however means I get out of sync with the explanation and find myself in =
the same situation, except now I can???t do much with it.
> - If the class requires active work, my mind gets submerged in the proble=
m and can???t track anything in the physical world, resulting in shattered =
context and missed information.
>=20
> Recording classes can fix all of these issues, however for the cost of do=
ubling the processing time for each class, since raw recordings don???t hol=
d any information about their content and need to be listened through in fu=
ll to get a good-quality notes.
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
k in augmented reality mode, where you can hear what???s happening around y=
ou. And if you don???t get something, need to research or simply mishear, t=
here???s nothing simpler than pausing the time or rewinding it back, you wi=
ll get to repeat the past events without missing on anything that???s happe=
ning in the meantime, because everything is being recorded for you in the b=
ackground. So when you???re done, you can simply continue listening to the =
class as it was happening while you were dealing with other things, or, eve=
n increase the speed twice or triple to get in sync again.
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
> This project is highly experimental, I???ve got all of the above mentione=
d implemented, and I???m curious to see how are my ideas going to work in p=
ractice. Over the time, I would also like to add more functionality related=
 to audio processing, like automatic transcription using Whisper (that of c=
ourse won???t work for math, but could give a decent enough starting point =
for more narrated topics), automatic silence detection and removal (combine=
d with timetravel, that could be a really interesting function), and I have=
 more cool stuff in mind. The idea is basically that SDAM could become my a=
ll-in-one solution for working with audio classes, increasing effectivity a=
nd saving time for more of the fascinating topics.
>=20
> If you find the idea interesting, you can learn more about the project in=
 it???s [GitHub repository](https://github.com/RastislavKish/sdam). It???s =
free and open-source, as usual with my projects.
>=20
> Happy memory-hacking!
>=20
> Best regards
>=20
> Rastislav
>=20
> ???
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.

--=20

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

