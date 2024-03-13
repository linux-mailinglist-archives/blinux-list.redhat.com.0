Return-Path: <blinux-list+bncBCM2V5WE3MDBBS6XY6XQMGQECCYBH2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 7311387AECA
	for <lists+blinux-list@lfdr.de>; Wed, 13 Mar 2024 19:09:17 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-42f51c1addbsf554571cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 13 Mar 2024 11:09:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710353356; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqvkhf3u0lVroiNAbYMmvBcSCJi3T+f93W7675qrEAEqS5fSDjD5lt/Mai1UI/OFBt
         TxFybxXVKqaKJK9vFgkwdJOANEME14TU8nxW47llO3/57AO1r4y5MdyHSsft6BwUHcmo
         Odkp/mYHPROd864QffSJWsVyrkKiLKaJ4zoZZQ+bQ8HsPigZGP2M4vPNKuLSxbI5z5Ax
         mVVC1G74yK9ci3bWU3hPTHOstbShk0jo/9ru4DoWBH+EhJILhPwV5pPvOpPP2b5mt2EW
         10Pm5hhjMdsmcQtteE+r7yG3kPtVw3r1MiuZgbWIkM6osAMnfo3xWKGgY+XsPcXpK8AE
         6oeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=ePsEqUN8UaD21ehojc7t4hVTeA/HJ5Xjzcio+mikRM4=;
        fh=rmrJfbgl88QKDcjfT3T4zLiZDL7OyBqS4hDObCtncUk=;
        b=xArNGmQlMzmJsjGuFP3OAsAXnJxZZVwHuBZPyPW76Awnesz5GHfNtS41EbNtPtKJL7
         UC+qqT2yWfAGpTsG2Z6H66Z+QbplLyOHwfEh4/lGWHX0SlYcZJkKupG4khrp+S1MbAZd
         4iPZTFT9Ztlm815AyihoSWsbCHmpsTyPr3ny5SheblqJTqhFAiOmiuLl23psdKhbW/z3
         OejmTDOhLDhEMG0huznHoMHAxYZdoI9raRS39CB7J89JpFinFBpnh4DYKctlMDCjStvn
         aNsajKwIAYibOiRDknJ6Xiobdl9NdPOvyrcAoJ6679YXDLfgRPAlPOoubEc6DeXAoQa0
         qtAQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710353356; x=1710958156;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ePsEqUN8UaD21ehojc7t4hVTeA/HJ5Xjzcio+mikRM4=;
        b=X/C6Y4gq+1c3HdLGSyvFkau85BpSFvWJzvnR7LiuhhHfIBCuq4vEy5t9zODMHO51VP
         pZVR30YdkElfKwem/UJ+zhvpxWPd9bts5hl2DImOIA0jtPVHS7T3QIyvifXcT3Ax3hQ0
         MVFqyaFwrbZyfJxrb24L7dqZE5f16VVgpoeTcs6nAZ+ACZGYKyrnvLsSw4JDJBfq5ZrS
         FaEJbZDop9vaEoVM8ubA1GWNDlDzswFgbsDcEcw2xcrEA1x/u3loy7PmQsh92GnJzdQS
         /mOF/at8RhOSb4qS+kgPp0pcYj23WKdj/uy0y88Sb4XjVtDP3O/XFwKix4D6OJcu2O17
         2RvQ==
X-Forwarded-Encrypted: i=2; AJvYcCX/mu3p92/0BJXvD/3IzFReDOSSWU9UGgE2mhhoBXjPUgl42ol3cCtanth8clb19l7DIxyPZJSd1DlmGaB2yHBOMSPmwDgzWRLn
X-Gm-Message-State: AOJu0Yy3RMQRqzAJDBjBmTPDLQZrWSvP2xPyaYP86xQWXkkAQbPAotVN
	9l4j/eLWHomfTX4BNUhbfBNUmLzwbY0VRCarzi0Xwl/NxRQl+WneSEtPSaNpPfU=
X-Google-Smtp-Source: AGHT+IGQ4nngU+3rJ6wAYS5qCKbDqKd07v65mbgp1Q0Ku/ptME2DY8AYfuxGdsm+InXxj4etahMN5w==
X-Received: by 2002:a05:622a:1a16:b0:42e:f729:a81c with SMTP id f22-20020a05622a1a1600b0042ef729a81cmr14923026qtb.38.1710353355871;
        Wed, 13 Mar 2024 11:09:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5e4e:0:b0:42e:f7cd:b912 with SMTP id i14-20020ac85e4e000000b0042ef7cdb912ls137158qtx.0.-pod-prod-08-us;
 Wed, 13 Mar 2024 11:09:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV2aKAPJipww2mNW5kFU3rqHknL6h1BdJq52Hrbp1L38SDnXyXDxEcufCDwEbkE1hrO/+GXvQE8UFG8FazJa/4EyEOsB1rZ/KTXyVqp
X-Received: by 2002:a05:6102:34d8:b0:473:3a62:a992 with SMTP id a24-20020a05610234d800b004733a62a992mr725115vst.12.1710353353258;
        Wed, 13 Mar 2024 11:09:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710353353; cv=none;
        d=google.com; s=arc-20160816;
        b=ltsHxxlmERoP0lMBPk5VZLsVwqA2cQihw107deuuUrjEof27wfQzpznCxf7a9XXrVN
         Z2RWajFVtTfnj8tLSC8Hf5MqC3XNvmuMnqn5mbP8mroe98WnRYY2kXDIhONxyFXYbsPh
         bLr3qVAv4teIxwtmoGMT/TmnhuiLaZ5YgnqGkbh4oq/2aS0b4oTShOZB0cAsm9ScK7xu
         QJG7rV584V5FmwcTH/B8ehq2WJaUxB72qpJA8MC7u10ygbwbtAmnAwlDmz7M4zwunlCp
         NrRETm5bccZ7hh64gSEhHovAvBWkmMkOVei+Rpfl3yrkZRHccIKg7JDFUxDAFAHOskS8
         W2hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:feedback-id:message-id:subject:from:to:date
         :delivered-to;
        bh=QCA/ubdxDeKdLzEQbt//O76Keq9YgHlRyOy32u6mXPs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=sw0i5Qids+gNGn6Z1rx62gV7LEhh9s4cBotsWJpRoqmnq+cdIL0rvizClMGAZTDCe5
         dsygw4cB6T4C/Ze3z4WKQkFHQFWPoka8uCq2uJ8ZUxH3uI/ZClwS/FyR/y1exAV9AEPb
         IdXfHqntaL5ayvx67I1TVEJ+9czDQYHHqxQdnUj09Xq5t4fj93TNHAfoc/csyfNl48ot
         5xOnhai0g4e05K1ygoaFt8N0gJCyiZE0wWBjoCifys0gATMHnmdb2yl86xCwYByKCA2P
         615EkWLkoFmMYp8x0L+pdO/fzLeqDjAAJJk98WVmjPcG7FwVyRaiEdxTgDHA+AH3Jv/L
         0fWg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id e25-20020a056102035900b00474c7b37725si466598vsa.140.2024.03.13.11.09.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 11:09:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) client-ip=185.70.43.27;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-147-x_idlcIVOcWu3UFVsXQZ6g-1; Wed, 13 Mar 2024 14:09:11 -0400
X-MC-Unique: x_idlcIVOcWu3UFVsXQZ6g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E91785530E
	for <blinux-list@gapps.redhat.com>; Wed, 13 Mar 2024 18:09:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7A4502166B4F; Wed, 13 Mar 2024 18:09:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3ED982166AE4
	for <blinux-list@redhat.com>; Wed, 13 Mar 2024 18:09:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F14480026C
	for <blinux-list@redhat.com>; Wed, 13 Mar 2024 18:09:10 +0000 (UTC)
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch
 [185.70.43.27]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-12-rHoTGVV-PuCakOOqRYkYUg-1; Wed, 13 Mar 2024 14:09:07 -0400
X-MC-Unique: rHoTGVV-PuCakOOqRYkYUg-1
Date: Wed, 13 Mar 2024 18:08:35 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Semantic Digital Audio Memory: A cognitive aid to boost the capabilities of your memory
Message-ID: <07d039e0-1a12-46ca-bd15-c2cc2a6d6866@protonmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: multipart/alternative;
 boundary="b1_KSIu3UPxplY7gDS4Fk1RfrlAH76URLljzGvCWQdylc"
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
--b1_KSIu3UPxplY7gDS4Fk1RfrlAH76URLljzGvCWQdylc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,
I would like to share with you a project I had in mind for longer time duri=
ng my university study, and which I finally got to work on in the recent mo=
nths.
While attending classes of theoretical mathematics, I=E2=80=99m usually fac=
ing 3 problems:

- I can=E2=80=99t write down notes and pay attention at the same time
- Sometimes, I don=E2=80=99t get the context of the explained concept right=
 away, I need few moments to think it through or even lookup additional det=
ails in my notes or on the Internet. So, I either don=E2=80=99t do so and e=
nd up just sitting in the class being unable to understand anything, becaus=
e that concept was important for later topics, or, I do the lookup asynchro=
nously, what however means I get out of sync with the explanation and find =
myself in the same situation, except now I can=E2=80=99t do much with it.
- If the class requires active work, my mind gets submerged in the problem =
and can=E2=80=99t track anything in the physical world, resulting in shatte=
red context and missed information.

Recording classes can fix all of these issues, however for the cost of doub=
ling the processing time for each class, since raw recordings don=E2=80=99t=
 hold any information about their content and need to be listened through i=
n full to get a good-quality notes.

Semantic audio

SDAM lets you capture recordings with assigned meaning. In the simplest usa=
ge, you can just start the recording and add a mark whenever something you =
will want to write down later is said, when the class is over, you can just=
 return to those labels and quickly create the notes, you can be sure you h=
ave covered everything important without the need to go through the whole t=
hing again. At the same time, those marks can serve as reference points, if=
 you need to return in your memory to the part of your class dealing with a=
 particular topic, because you feel you may have missed something or just w=
ant to hear it again, you can get to the relevant part in few clicks.

Time travel

However, SDAM also offers a different operation mode. If you have headphone=
s with active noise cancellation technology, you can use it to travel in ti=
me during the class. After activating this function, the program will work =
in augmented reality mode, where you can hear what=E2=80=99s happening arou=
nd you. And if you don=E2=80=99t get something, need to research or simply =
mishear, there=E2=80=99s nothing simpler than pausing the time or rewinding=
 it back, you will get to repeat the past events without missing on anythin=
g that=E2=80=99s happening in the meantime, because everything is being rec=
orded for you in the background. So when you=E2=80=99re done, you can simpl=
y continue listening to the class as it was happening while you were dealin=
g with other things, or, even increase the speed twice or triple to get in =
sync again.

The program is also equipped with a built-in notepad, so you can make use o=
f it to do your note-taking stuff, calculations and other textual operation=
s.

Saving your memory to a file

When the class is over and you save everything, all the recorded audio, tak=
en marks and written notes is put into a single file, which can be afterwar=
ds opened again in SDAM and act as a effective capture of your memory back =
from the class.

This project is highly experimental, I=E2=80=99ve got all of the above ment=
ioned implemented, and I=E2=80=99m curious to see how are my ideas going to=
 work in practice. Over the time, I would also like to add more functionali=
ty related to audio processing, like automatic transcription using Whisper =
(that of course won=E2=80=99t work for math, but could give a decent enough=
 starting point for more narrated topics), automatic silence detection and =
removal (combined with timetravel, that could be a really interesting funct=
ion), and I have more cool stuff in mind. The idea is basically that SDAM c=
ould become my all-in-one solution for working with audio classes, increasi=
ng effectivity and saving time for more of the fascinating topics.

If you find the idea interesting, you can learn more about the project in i=
t=E2=80=99s [GitHub repository](https://github.com/RastislavKish/sdam). It=
=E2=80=99s free and open-source, as usual with my projects.

Happy memory-hacking!

Best regards

Rastislav

=E2=80=8B

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1_KSIu3UPxplY7gDS4Fk1RfrlAH76URLljzGvCWQdylc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <div class=3D"markdown-here-wrapper" data-md-url=3D"" style=3D"">
      <p style=3D"margin: 0px 0px 1.2em !important;">Hello everyone,<br>
        I would like to share with you a project I had in mind for
        longer time during my university study, and which I finally got
        to work on in the recent months.<br>
        While attending classes of theoretical mathematics, I=E2=80=99m usu=
ally
        facing 3 problems:</p>
      <ol style=3D"margin: 1.2em 0px;padding-left: 2em;">
        <li style=3D"margin: 0.5em 0px;">I can=E2=80=99t write down notes a=
nd pay
          attention at the same time</li>
        <li style=3D"margin: 0.5em 0px;">Sometimes, I don=E2=80=99t get the
          context of the explained concept right away, I need few
          moments to think it through or even lookup additional details
          in my notes or on the Internet. So, I either don=E2=80=99t do so =
and
          end up just sitting in the class being unable to understand
          anything, because that concept was important for later topics,
          or, I do the lookup asynchronously, what however means I get
          out of sync with the explanation and find myself in the same
          situation, except now I can=E2=80=99t do much with it.</li>
        <li style=3D"margin: 0.5em 0px;">If the class requires active
          work, my mind gets submerged in the problem and can=E2=80=99t tra=
ck
          anything in the physical world, resulting in shattered context
          and missed information.</li>
      </ol>
      <p style=3D"margin: 0px 0px 1.2em !important;">Recording classes can
        fix all of these issues, however for the cost of doubling the
        processing time for each class, since raw recordings don=E2=80=99t =
hold
        any information about their content and need to be listened
        through in full to get a good-quality notes.</p>
      <h3
style=3D"margin: 1.3em 0px 1em; padding: 0px; font-weight: bold;font-size: =
1.3em;">Semantic
        audio</h3>
      <p style=3D"margin: 0px 0px 1.2em !important;">SDAM lets you capture
        recordings with assigned meaning. In the simplest usage, you can
        just start the recording and add a mark whenever something you
        will want to write down later is said, when the class is over,
        you can just return to those labels and quickly create the
        notes, you can be sure you have covered everything important
        without the need to go through the whole thing again. At the
        same time, those marks can serve as reference points, if you
        need to return in your memory to the part of your class dealing
        with a particular topic, because you feel you may have missed
        something or just want to hear it again, you can get to the
        relevant part in few clicks.</p>
      <h3
style=3D"margin: 1.3em 0px 1em; padding: 0px; font-weight: bold;font-size: =
1.3em;">Time
        travel</h3>
      <p style=3D"margin: 0px 0px 1.2em !important;">However, SDAM also
        offers a different operation mode. If you have headphones with
        active noise cancellation technology, you can use it to travel
        in time during the class. After activating this function, the
        program will work in augmented reality mode, where you can hear
        what=E2=80=99s happening around you. And if you don=E2=80=99t get s=
omething,
        need to research or simply mishear, there=E2=80=99s nothing simpler=
 than
        pausing the time or rewinding it back, you will get to repeat
        the past events without missing on anything that=E2=80=99s happenin=
g in
        the meantime, because everything is being recorded for you in
        the background. So when you=E2=80=99re done, you can simply continu=
e
        listening to the class as it was happening while you were
        dealing with other things, or, even increase the speed twice or
        triple to get in sync again.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">The program is also
        equipped with a built-in notepad, so you can make use of it to
        do your note-taking stuff, calculations and other textual
        operations.</p>
      <h3
style=3D"margin: 1.3em 0px 1em; padding: 0px; font-weight: bold;font-size: =
1.3em;">Saving
        your memory to a file</h3>
      <p style=3D"margin: 0px 0px 1.2em !important;">When the class is
        over and you save everything, all the recorded audio, taken
        marks and written notes is put into a single file, which can be
        afterwards opened again in SDAM and act as a effective capture
        of your memory back from the class.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">This project is
        highly experimental, I=E2=80=99ve got all of the above mentioned
        implemented, and I=E2=80=99m curious to see how are my ideas going =
to
        work in practice. Over the time, I would also like to add more
        functionality related to audio processing, like automatic
        transcription using Whisper (that of course won=E2=80=99t work for =
math,
        but could give a decent enough starting point for more narrated
        topics), automatic silence detection and removal (combined with
        timetravel, that could be a really interesting function), and I
        have more cool stuff in mind. The idea is basically that SDAM
        could become my all-in-one solution for working with audio
        classes, increasing effectivity and saving time for more of the
        fascinating topics.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">If you find the idea
        interesting, you can learn more about the project in it=E2=80=99s <=
a
          href=3D"https://github.com/RastislavKish/sdam">GitHub repository<=
/a>.
        It=E2=80=99s free and open-source, as usual with my projects.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Happy memory-hacking!<=
/p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Best regards</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Rastislav</p>
      <div
title=3D"MDH:PHA+SGVsbG8gZXZlcnlvbmUsPGJyPkkgd291bGQgbGlrZSB0byBzaGFyZSB3aX=
RoIHlvdSBhIHBy
b2plY3QgSSBoYWQgaW4gbWluZCBmb3IgbG9uZ2VyIHRpbWUgZHVyaW5nIG15IHVuaXZlcnNpdHk=
g
c3R1ZHksIGFuZCB3aGljaCBJIGZpbmFsbHkgZ290IHRvIHdvcmsgb24gaW4gdGhlIHJlY2VudCB=
t
b250aHMuPGJyPldoaWxlIGF0dGVuZGluZyBjbGFzc2VzIG9mIHRoZW9yZXRpY2FsIG1hdGhlbWF=
0
aWNzLCBJJ20gdXN1YWxseSBmYWNpbmcgMyBwcm9ibGVtczo8YnI+PGJyPjEuIEkgY2FuJ3Qgd3J=
p
dGUgZG93biBub3RlcyBhbmQgcGF5IGF0dGVudGlvbiBhdCB0aGUgc2FtZSB0aW1lPGJyPjIuIFN=
v
bWV0aW1lcywgSSBkb24ndCBnZXQgdGhlIGNvbnRleHQgb2YgdGhlIGV4cGxhaW5lZCBjb25jZXB=
0
IHJpZ2h0IGF3YXksIEkgbmVlZCBmZXcgbW9tZW50cyB0byB0aGluayBpdCB0aHJvdWdoIG9yIGV=
2
ZW4gbG9va3VwIGFkZGl0aW9uYWwgZGV0YWlscyBpbiBteSBub3RlcyBvciBvbiB0aGUgSW50ZXJ=
u
ZXQuIFNvLCBJIGVpdGhlciBkb24ndCBkbyBzbyBhbmQgZW5kIHVwIGp1c3Qgc2l0dGluZyBpbiB=
0
aGUgY2xhc3MgYmVpbmcgdW5hYmxlIHRvIHVuZGVyc3RhbmQgYW55dGhpbmcsIGJlY2F1c2UgdGh=
h
dCBjb25jZXB0IHdhcyBpbXBvcnRhbnQgZm9yIGxhdGVyIHRvcGljcywgb3IsIEkgZG8gdGhlIGx=
v
b2t1cCBhc3luY2hyb25vdXNseSwgd2hhdCBob3dldmVyIG1lYW5zIEkgZ2V0IG91dCBvZiBzeW5=
j
IHdpdGggdGhlIGV4cGxhbmF0aW9uIGFuZCBmaW5kIG15c2VsZiBpbiB0aGUgc2FtZSBzaXR1YXR=
p
b24sIGV4Y2VwdCBub3cgSSBjYW4ndCBkbyBtdWNoIHdpdGggaXQuPGJyPjMuIElmIHRoZSBjbGF=
z
cyByZXF1aXJlcyBhY3RpdmUgd29yaywgbXkgbWluZCBnZXRzIHN1Ym1lcmdlZCBpbiB0aGUgcHJ=
v
YmxlbSBhbmQgY2FuJ3QgdHJhY2sgYW55dGhpbmcgaW4gdGhlIHBoeXNpY2FsIHdvcmxkLCByZXN=
1
bHRpbmcgaW4gc2hhdHRlcmVkIGNvbnRleHQgYW5kIG1pc3NlZCBpbmZvcm1hdGlvbi48YnI+PGJ=
y
PlJlY29yZGluZyBjbGFzc2VzIGNhbiBmaXggYWxsIG9mIHRoZXNlIGlzc3VlcywgaG93ZXZlciB=
m
b3IgdGhlIGNvc3Qgb2YgZG91YmxpbmcgdGhlIHByb2Nlc3NpbmcgdGltZSBmb3IgZWFjaCBjbGF=
z
cywgc2luY2UgcmF3IHJlY29yZGluZ3MgZG9uJ3QgaG9sZCBhbnkgaW5mb3JtYXRpb24gYWJvdXQ=
g
dGhlaXIgY29udGVudCBhbmQgbmVlZCB0byBiZSBsaXN0ZW5lZCB0aHJvdWdoIGluIGZ1bGwgdG8=
g
Z2V0IGEgZ29vZC1xdWFsaXR5IG5vdGVzLjxicj48YnI+IyMjIFNlbWFudGljIGF1ZGlvPGJyPjx=
i
cj5TREFNIGxldHMgeW91IGNhcHR1cmUgcmVjb3JkaW5ncyB3aXRoIGFzc2lnbmVkIG1lYW5pbmc=
u
IEluIHRoZSBzaW1wbGVzdCB1c2FnZSwgeW91IGNhbiBqdXN0IHN0YXJ0IHRoZSByZWNvcmRpbmc=
g
YW5kIGFkZCBhIG1hcmsgd2hlbmV2ZXIgc29tZXRoaW5nIHlvdSB3aWxsIHdhbnQgdG8gd3JpdGU=
g
ZG93biBsYXRlciBpcyBzYWlkLCB3aGVuIHRoZSBjbGFzcyBpcyBvdmVyLCB5b3UgY2FuIGp1c3Q=
g
cmV0dXJuIHRvIHRob3NlIGxhYmVscyBhbmQgcXVpY2tseSBjcmVhdGUgdGhlIG5vdGVzLCB5b3U=
g
Y2FuIGJlIHN1cmUgeW91IGhhdmUgY292ZXJlZCBldmVyeXRoaW5nIGltcG9ydGFudCB3aXRob3V=
0
IHRoZSBuZWVkIHRvIGdvIHRocm91Z2ggdGhlIHdob2xlIHRoaW5nIGFnYWluLiBBdCB0aGUgc2F=
t
ZSB0aW1lLCB0aG9zZSBtYXJrcyBjYW4gc2VydmUgYXMgcmVmZXJlbmNlIHBvaW50cywgaWYgeW9=
1
IG5lZWQgdG8gcmV0dXJuIGluIHlvdXIgbWVtb3J5IHRvIHRoZSBwYXJ0IG9mIHlvdXIgY2xhc3M=
g
ZGVhbGluZyB3aXRoIGEgcGFydGljdWxhciB0b3BpYywgYmVjYXVzZSB5b3UgZmVlbCB5b3UgbWF=
5
IGhhdmUgbWlzc2VkIHNvbWV0aGluZyBvciBqdXN0IHdhbnQgdG8gaGVhciBpdCBhZ2FpbiwgeW9=
1
IGNhbiBnZXQgdG8gdGhlIHJlbGV2YW50IHBhcnQgaW4gZmV3IGNsaWNrcy48YnI+PGJyPiMjIyB=
U
aW1lIHRyYXZlbDxicj48YnI+SG93ZXZlciwgU0RBTSBhbHNvIG9mZmVycyBhIGRpZmZlcmVudCB=
v
cGVyYXRpb24gbW9kZS4gSWYgeW91IGhhdmUgaGVhZHBob25lcyB3aXRoIGFjdGl2ZSBub2lzZSB=
j
YW5jZWxsYXRpb24gdGVjaG5vbG9neSwgeW91IGNhbiB1c2UgaXQgdG8gdHJhdmVsIGluIHRpbWU=
g
ZHVyaW5nIHRoZSBjbGFzcy4gQWZ0ZXIgYWN0aXZhdGluZyB0aGlzIGZ1bmN0aW9uLCB0aGUgcHJ=
v
Z3JhbSB3aWxsIHdvcmsgaW4gYXVnbWVudGVkIHJlYWxpdHkgbW9kZSwgd2hlcmUgeW91IGNhbiB=
o
ZWFyIHdoYXQncyBoYXBwZW5pbmcgYXJvdW5kIHlvdS4gQW5kIGlmIHlvdSBkb24ndCBnZXQgc29=
t
ZXRoaW5nLCBuZWVkIHRvIHJlc2VhcmNoIG9yIHNpbXBseSBtaXNoZWFyLCB0aGVyZSdzIG5vdGh=
p
bmcgc2ltcGxlciB0aGFuIHBhdXNpbmcgdGhlIHRpbWUgb3IgcmV3aW5kaW5nIGl0IGJhY2ssIHl=
v
dSB3aWxsIGdldCB0byByZXBlYXQgdGhlIHBhc3QgZXZlbnRzIHdpdGhvdXQgbWlzc2luZyBvbiB=
h
bnl0aGluZyB0aGF0J3MgaGFwcGVuaW5nIGluIHRoZSBtZWFudGltZSwgYmVjYXVzZSBldmVyeXR=
o
aW5nIGlzIGJlaW5nIHJlY29yZGVkIGZvciB5b3UgaW4gdGhlIGJhY2tncm91bmQuIFNvIHdoZW4=
g
eW91J3JlIGRvbmUsIHlvdSBjYW4gc2ltcGx5IGNvbnRpbnVlIGxpc3RlbmluZyB0byB0aGUgY2x=
h
c3MgYXMgaXQgd2FzIGhhcHBlbmluZyB3aGlsZSB5b3Ugd2VyZSBkZWFsaW5nIHdpdGggb3RoZXI=
g
dGhpbmdzLCBvciwgZXZlbiBpbmNyZWFzZSB0aGUgc3BlZWQgdHdpY2Ugb3IgdHJpcGxlIHRvIGd=
l
dCBpbiBzeW5jIGFnYWluLjxicj48YnI+VGhlIHByb2dyYW0gaXMgYWxzbyBlcXVpcHBlZCB3aXR=
o
IGEgYnVpbHQtaW4gbm90ZXBhZCwgc28geW91IGNhbiBtYWtlIHVzZSBvZiBpdCB0byBkbyB5b3V=
y
IG5vdGUtdGFraW5nIHN0dWZmLCBjYWxjdWxhdGlvbnMgYW5kIG90aGVyIHRleHR1YWwgb3BlcmF=
0
aW9ucy48YnI+PGJyPiMjIyBTYXZpbmcgeW91ciBtZW1vcnkgdG8gYSBmaWxlPGJyPjxicj5XaGV=
u
IHRoZSBjbGFzcyBpcyBvdmVyIGFuZCB5b3Ugc2F2ZSBldmVyeXRoaW5nLCBhbGwgdGhlIHJlY29=
y
ZGVkIGF1ZGlvLCB0YWtlbiBtYXJrcyBhbmQgd3JpdHRlbiBub3RlcyBpcyBwdXQgaW50byBhIHN=
p
bmdsZSBmaWxlLCB3aGljaCBjYW4gYmUgYWZ0ZXJ3YXJkcyBvcGVuZWQgYWdhaW4gaW4gU0RBTSB=
h
bmQgYWN0IGFzIGEgZWZmZWN0aXZlIGNhcHR1cmUgb2YgeW91ciBtZW1vcnkgYmFjayBmcm9tIHR=
o
ZSBjbGFzcy48YnI+PGJyPlRoaXMgcHJvamVjdCBpcyBoaWdobHkgZXhwZXJpbWVudGFsLCBJJ3Z=
l
IGdvdCBhbGwgb2YgdGhlIGFib3ZlIG1lbnRpb25lZCBpbXBsZW1lbnRlZCwgYW5kIEknbSBjdXJ=
p
b3VzIHRvIHNlZSBob3cgYXJlIG15IGlkZWFzIGdvaW5nIHRvIHdvcmsgaW4gcHJhY3RpY2UuIE9=
2
ZXIgdGhlIHRpbWUsIEkgd291bGQgYWxzbyBsaWtlIHRvIGFkZCBtb3JlIGZ1bmN0aW9uYWxpdHk=
g
cmVsYXRlZCB0byBhdWRpbyBwcm9jZXNzaW5nLCBsaWtlIGF1dG9tYXRpYyB0cmFuc2NyaXB0aW9=
u
IHVzaW5nIFdoaXNwZXIgKHRoYXQgb2YgY291cnNlIHdvbid0IHdvcmsgZm9yIG1hdGgsIGJ1dCB=
j
b3VsZCBnaXZlIGEgZGVjZW50IGVub3VnaCBzdGFydGluZyBwb2ludCBmb3IgbW9yZSBuYXJyYXR=
l
ZCB0b3BpY3MpLCBhdXRvbWF0aWMgc2lsZW5jZSBkZXRlY3Rpb24gYW5kIHJlbW92YWwgKGNvbWJ=
p
bmVkIHdpdGggdGltZXRyYXZlbCwgdGhhdCBjb3VsZCBiZSBhIHJlYWxseSBpbnRlcmVzdGluZyB=
m
dW5jdGlvbiksIGFuZCBJIGhhdmUgbW9yZSBjb29sIHN0dWZmIGluIG1pbmQuIFRoZSBpZGVhIGl=
z
IGJhc2ljYWxseSB0aGF0IFNEQU0gY291bGQgYmVjb21lIG15IGFsbC1pbi1vbmUgc29sdXRpb24=
g
Zm9yIHdvcmtpbmcgd2l0aCBhdWRpbyBjbGFzc2VzLCBpbmNyZWFzaW5nIGVmZmVjdGl2aXR5IGF=
u
ZCBzYXZpbmcgdGltZSBmb3IgbW9yZSBvZiB0aGUgZmFzY2luYXRpbmcgdG9waWNzLjxicj48YnI=
+
SWYgeW91IGZpbmQgdGhlIGlkZWEgaW50ZXJlc3RpbmcsIHlvdSBjYW4gbGVhcm4gbW9yZSBhYm9=
1
dCB0aGUgcHJvamVjdCBpbiBpdCdzIFtHaXRIdWIgcmVwb3NpdG9yeV0oaHR0cHM6Ly9naXRodWI=
u
Y29tL1Jhc3Rpc2xhdktpc2gvc2RhbSkuIEl0J3MgZnJlZSBhbmQgb3Blbi1zb3VyY2UsIGFzIHV=
z
dWFsIHdpdGggbXkgcHJvamVjdHMuPGJyPjxicj5IYXBweSBtZW1vcnktaGFja2luZyE8YnI+PGJ=
y
PkJlc3QgcmVnYXJkczxicj48YnI+UmFzdGlzbGF2PGJyPjxicj48L3A+"
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

--b1_KSIu3UPxplY7gDS4Fk1RfrlAH76URLljzGvCWQdylc--

