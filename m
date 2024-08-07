Return-Path: <blinux-list+bncBCM2V5WE3MDBBMEN2C2QMGQEG3QGFMI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id A387094B3D2
	for <lists+blinux-list@lfdr.de>; Thu,  8 Aug 2024 01:43:46 +0200 (CEST)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3db1b451e43sf444105b6e.0
        for <lists+blinux-list@lfdr.de>; Wed, 07 Aug 2024 16:43:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723074225; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/HMy43sQ5iEpuY0BiA8cO2mUR8Qy1fYlIl1a6r64WRw0NkuVO0brNlLCUJo3jpoum
         PpDfI0w1fbhkhbXL1aF6/XhtCdLRF1/xaXE3B6cIGDewTx14xSf+Q9NSN806msaWppKn
         l8o4mpozLPMwnPYn0mJMtpFK5sQ+J1ODyk4iOuOyeAoyJsS37kg9PZLUeNGn5rHJY/ke
         V56cNDjnrpQomA3m7tsZgCY9BKF8Ilehl6MiVq7Ar0Pt+LGvcZpuEdYy453TZf7bqdh9
         52+DQZPyCPWVLD2dZq6LTy3EM6cyb7A9uSoG9RKhAm3uparhiNHFavr0cpdhELyO/ATI
         qBQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :references:in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=qYULzprTaBb2mxIfTu4DgANiPAbjqwkK82E7yKBjcXU=;
        fh=EPuRL0q57bADJF1OSotUttKcPP1U6/y86us4S6LckVY=;
        b=iu035FMxoJk1cAfbdB6psIjj8ySAye1hWGZvs5HxmRSMy/BZ9Mu83ireaynZoUSi2L
         9a7gD9ndAUsx0TpSfDZ+pwiQ4IxkCNm1EELVJ290oHPNc7xqeKBCiGGENmt80BCEJGrn
         Tay9tvLISn0m7KFS4GrivOdK6JUrfcF7YgwKOSRrd+7sGS38pg/55z+gwUpExr4Vhvb+
         bRIfXgaHhk6mzSTDkj3w7wnUgIp//aY1lbQZzP/HlkfLchYHKoxrKvMXJNXeTZgyWe9W
         QtFwUZokN2+snnqIk2vCHHjKc3gqNOV/3qFZ2wFCqDtNCk1FnWa11aFdiiwIvz8eVgnv
         i7IA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723074225; x=1723679025;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:references:in-reply-to:message-id:subject:from:to:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYULzprTaBb2mxIfTu4DgANiPAbjqwkK82E7yKBjcXU=;
        b=wMyxhtKa/Y4/ykqE3/rliUpPiIYICnpCAtzmnxNAfYmBmNxgroU3ccOWyJ8kEJ9CNu
         2I9/YY07Y7jYLaxJr+3uH5/bhB3Vw/B5AKPitwirlYDo/uFU7rd+mlnG4szU5k/Zl5Xf
         AwTSIpof9RURm3sp1GQlyqag8oTEuVD10JWit5UguRi18jIWZHbZQcY9zKYis2Nb8Sgb
         laE2yli8TQvY9vIBmBkLNSTZoMceWhcVlZnbbdQ1Ah+a3o3zb8/ZngdgFMbLcOeb74At
         yBbCZI1AeNA6RZo53ZLsbMe6Kowh1BNeaC3DYUj4HekKoMqKZbO6QQVuhjoxUhqFPmO4
         eWzQ==
X-Forwarded-Encrypted: i=2; AJvYcCUYz1OpNL6WRvO+g3TT8eH0zRXRjbSEnErTAzq2eK4XaB9N4xeu5uMhvzpKH/4Aiz8Gntae09Tu9p/DyO1Kfxp/m++1UKze8VRr
X-Gm-Message-State: AOJu0YwmT1TH/Q9i7Eb46NPjpicqLyjiP91mesIwdf3DZDOgGRHEtyLy
	tk/fXHtjmZtwBxHBB6Ay60TomA2oKgJL2x6RO/hBG5vJI0EgeLcLR/vPh5fFi8I=
X-Google-Smtp-Source: AGHT+IFd5JIobHMZIXH0f8LnzYgLuMycw/mP3Afd8SgnpCWI1gjGpuWygyswPS4Uoh1jRd7dlM5NHg==
X-Received: by 2002:a05:6808:f8a:b0:3db:2afc:ad6 with SMTP id 5614622812f47-3dc3b44c9f6mr203909b6e.38.1723074225116;
        Wed, 07 Aug 2024 16:43:45 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a49:0:b0:444:f4c3:34ef with SMTP id d75a77b69052e-451d10eafecls5895631cf.0.-pod-prod-04-us;
 Wed, 07 Aug 2024 16:43:44 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWg6Zf3SbtV7aUwKiKjzbcgrpJwTEHf2/PBCJoiKcSSS3SwZmcJd6ca/dfgpv+jCnPl0ZaR3YXCwgODb7oQSdhVHcgUFSFNHdBUpAzB
X-Received: by 2002:a05:622a:410e:b0:44f:ee1a:3410 with SMTP id d75a77b69052e-451d421c847mr3179411cf.20.1723074223975;
        Wed, 07 Aug 2024 16:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723074223; cv=none;
        d=google.com; s=arc-20160816;
        b=iqp+6IZXso93gVhtVAwy2TZrURwN7fYFyYfNFIczTCGUdXQLNqXkPJWcSJ4S6Mv8Sb
         AfhZZJNKMb+QWmV0f4N1zju7GuGZdvD6VBKwvjxiimpv2F31Q4U9Dkxdb8/s6pLTjDSX
         KApUwpya6cC6keOxBbE/O4L7Fch134OLGzfXzMvFxtMhMXLZNzInGfGtYt8S2H7IVy2/
         O50z2alUjFIAFSKTtmlIiy4dVfZ3Kykvym7Ve8DpjpYW3rLWpYsf+W9JYlfQemYUr203
         mueHZ/W3BZPuhRUqh1nV/unCMKvL8iEZL9uGgZo6fyVV3namE6XnNprC0DlpPemwOWKG
         vFWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=6deSjmBBcW20Oq2VWYJISHLtqakPayvkYwN8TdBI1CY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=hHlMMhJ9LWbdP+7ojV9CO1we4q/BL8JO1mDV9yxrY4md1muuzN/amw9l9UnHjdTKiW
         YCt0ROL+Zmg5xY0DWbmThJcham/MFhXznREyaiwVaJGfnRLTmRkyRyY98qTxOmyIbq4Z
         /gM9ugM5FUMCNuNFE3Ms380UIciPdnh41IbkEBBQ5jOiXZmbo8AIGEpN/fuTDfkz5BDv
         qWp0pe8l2Vxmy6yO1XuoJmzQyl4yONPglFq8gzhAHVnmmPKWAZNUDJNqKvFxuqRRP3VT
         mz7qA2DezVD/vEmzob0ikUeGAYTOudfwpW+G7CWS4KJ9MVP8TX9H6Rle7qGjaKp/hUyI
         2i9Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-451c87d762esi27266491cf.287.2024.08.07.16.43.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 16:43:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) client-ip=185.70.41.104;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-339-GaNZkmVUMkmnDk9w7QVHSw-1; Wed,
 07 Aug 2024 19:43:42 -0400
X-MC-Unique: GaNZkmVUMkmnDk9w7QVHSw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 778AA1955F0D
	for <blinux-list@gapps.redhat.com>; Wed,  7 Aug 2024 23:43:41 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7055C19560AD; Wed,  7 Aug 2024 23:43:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6D4BE19560AA
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 23:43:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D4C2F1955F0D
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 23:43:40 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-369-v3-sL5-fMRy2SNIRQSM3Ng-1; Wed, 07 Aug 2024 19:43:37 -0400
X-MC-Unique: v3-sL5-fMRy2SNIRQSM3Ng-1
Date: Wed, 07 Aug 2024 23:43:12 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Lios
Message-ID: <bb57aa41-fa00-4cfe-a367-1a7a50251211@protonmail.com>
In-Reply-To: <8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com>
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com> <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com> <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com> <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com> <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com> <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com> <0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com> <8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: cd1e2686ebbb1fcea633958cf48eddc118b7ae4c
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: multipart/alternative;
 boundary="b1_JoKhOBmrkY4Jq80vtHbRKhaowCpRfiRVrMqaQpG5k"
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

This is a multi-part message in MIME format.
--b1_JoKhOBmrkY4Jq80vtHbRKhaowCpRfiRVrMqaQpG5k
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Rodney,
the official repository of the LIOS project is here:
https://github.com/zendalona/lios

I have forked it and applied my fixes I made some time ago for my HP laserj=
et scanner.
https://github.com/RastislavKish/lios

See the scanimageDriverFix branch. If you=E2=80=99d like to try it out, the=
re are two ways to do it, the more complicated but correct and simpler but =
hacky.

The more complicated is to get rid of your current lios installation (this =
is necessary to avoid package collisions) and install the program from the =
fix branch of my repository:

git clone
https://github.com/RastislavKish/lios
cd lios
git switch scanimageDriverFix

And install from source according to the documentation.

Don=E2=80=99t forget to select scanimage driver to be used in the LIOS sett=
ings.

However, there is a simpler way. The fix basically deals with just one file=
, and synce Python programs are not compiled, you can swap it out for the m=
odified version in the existing installation and make it work this way. No =
need to uninstall your current setup and it=E2=80=99s relatively quick.

In order to do this, you first need to locate where did your system install=
 the lios python package. It likely resides in one of the python=E2=80=99s =
dist-packages or site-packages directories, check /usr/lib/pytho, /usr/loca=
l/lib/python etc. When you find the directory, the file you=E2=80=99re look=
ing for is ./scanner/scanimage_driver.py
Clone my repository like mentioned above, don=E2=80=99t forget to switch th=
e branch i.e.

git clone
https://github.com/RastislavKish/lios
cd lios
git switch scanimageDriverFix

And swap the scanimage_driver.py. You will likely need to do this as a root=
 since LIOS is usually installed in a read-only directory.

Also make sure to select scanimage as the scanning driver in the LIOS setti=
ngs.

I=E2=80=99m not promising anything, as I mentioned before this was a simple=
 fix intended to make the program work with my scanner, but maybe it will w=
ork for you too, the problem seems similar.

Best regards

Rastislav

D=C5=88a 7. 8. 2024 o 21:37 rodney jackson nap=C3=ADsal(a):

> Rastislav
>
> I logged into my linux mint machine and the version of LIOS is 2.8
>
> Rodney
>
> On 8/7/2024 06:05, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>
>> Hello,
>> which distribution of LIOS are you using?
>> These issues shouldn't be a big deal, LIOS has a bit incomplete implemen=
tation of the scanner protocol, but when this happened on my machine I coul=
d fix it in the code and I believe I reported the issues and my solutions b=
ack.
>>
>> Best regards
>>
>> Rastislav
>>
>> D=C5=88a 6. 8. 2024 o 3:48 rodney jackson nap=C3=ADsal(a):
>>
>>> I am having issues with Lios, I am hoping someone can help me figure th=
is out.
>>> Scanner I have: epson perfection v39 ii
>>> When trying to run Lios to scan documents
>>> Lios sees the scanner but I get the error below:
>>> Error I get:
>>> Scanner update list error Object has no attribute max_y
>>> I have tried this on Accessible Coconut and Linux mint as well as Debia=
n Bookworm
>>> all other 3
>>>
>>> rd
>>>
>>> party scanning software on these machines have no issues with scanning =
with this scanner
>>> Any help will be greatly appreciated.
>>> Rodney

=E2=80=8B

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1_JoKhOBmrkY4Jq80vtHbRKhaowCpRfiRVrMqaQpG5k
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <div class=3D"markdown-here-wrapper" data-md-url=3D"" style=3D"">
      <p style=3D"margin: 0px 0px 1.2em !important;">Hello Rodney,<br>
        the official repository of the LIOS project is here:<br>
        <a href=3D"https://github.com/zendalona/lios"
          class=3D"moz-txt-link-freetext">https://github.com/zendalona/lios=
</a></p>
      <p style=3D"margin: 0px 0px 1.2em !important;">I have forked it and
        applied my fixes I made some time ago for my HP laserjet
        scanner.<br>
        <a href=3D"https://github.com/RastislavKish/lios"
          class=3D"moz-txt-link-freetext">https://github.com/RastislavKish/=
lios</a></p>
      <p style=3D"margin: 0px 0px 1.2em !important;">See the
        scanimageDriverFix branch. If you=E2=80=99d like to try it out, the=
re
        are two ways to do it, the more complicated but correct and
        simpler but hacky.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">The more complicated
        is to get rid of your current lios installation (this is
        necessary to avoid package collisions) and install the program
        from the fix branch of my repository:</p>
      <pre
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;font-size: =
1em; line-height: 1.2em;margin: 1.2em 0px;"><code
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;margin: 0px=
 0.15em; padding: 0px 0.3em; white-space: pre-wrap; font-weight: 550; backg=
round-color: rgba(119, 119, 119, 0.3); border-radius: 3px; display: inline;=
white-space: pre; overflow: auto; border-radius: 3px; border: 1px solid rgb=
(204, 204, 204); padding: 0.5em 0.7em; display: block;">git clone <a class=
=3D"moz-txt-link-freetext" href=3D"https://github.com/RastislavKish/lios">h=
ttps://github.com/RastislavKish/lios</a>
cd lios
git switch scanimageDriverFix
</code></pre>
      <p style=3D"margin: 0px 0px 1.2em !important;">And install from
        source according to the documentation.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Don=E2=80=99t forget t=
o
        select scanimage driver to be used in the LIOS settings.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">However, there is a
        simpler way. The fix basically deals with just one file, and
        synce Python programs are not compiled, you can swap it out for
        the modified version in the existing installation and make it
        work this way. No need to uninstall your current setup and it=E2=80=
=99s
        relatively quick.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">In order to do this,
        you first need to locate where did your system install the lios
        python package. It likely resides in one of the python=E2=80=99s
        dist-packages or site-packages directories, check
        /usr/lib/pytho, /usr/local/lib/python etc. When you find the
        directory, the file you=E2=80=99re looking for is ./scanner/scanima=
ge_<a
          href=3D"http://driver.py">driver.py</a><br>
        Clone my repository like mentioned above, don=E2=80=99t forget to s=
witch
        the branch i.e.</p>
      <pre
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;font-size: =
1em; line-height: 1.2em;margin: 1.2em 0px;"><code
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;margin: 0px=
 0.15em; padding: 0px 0.3em; white-space: pre-wrap; font-weight: 550; backg=
round-color: rgba(119, 119, 119, 0.3); border-radius: 3px; display: inline;=
white-space: pre; overflow: auto; border-radius: 3px; border: 1px solid rgb=
(204, 204, 204); padding: 0.5em 0.7em; display: block;">git clone <a class=
=3D"moz-txt-link-freetext" href=3D"https://github.com/RastislavKish/lios">h=
ttps://github.com/RastislavKish/lios</a>
cd lios
git switch scanimageDriverFix
</code></pre>
      <p style=3D"margin: 0px 0px 1.2em !important;">And swap the
        scanimage_<a href=3D"http://driver.py">driver.py</a>. You will
        likely need to do this as a root since LIOS is usually installed
        in a read-only directory.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Also make sure to
        select scanimage as the scanning driver in the LIOS settings.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">I=E2=80=99m not promis=
ing
        anything, as I mentioned before this was a simple fix intended
        to make the program work with my scanner, but maybe it will work
        for you too, the problem seems similar.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Best regards</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Rastislav</p>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <div class=3D"markdown-here-exclude">
        <div class=3D"moz-cite-prefix">D=C5=88a 7. 8. 2024 o 21:37 rodney
          jackson nap=C3=ADsal(a):<br>
        </div>
      </div>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <div class=3D"markdown-here-exclude">
        <blockquote type=3D"cite"
          cite=3D"mid:8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com">
          <p>Rastislav</p>
          <p>I logged into my linux mint machine and the version of LIOS
            is
            2.8</p>
          <p>Rodney<br>
          </p>
          <div class=3D"moz-cite-prefix">On 8/7/2024 06:05, 'Rastislav
            Kish' via
            <a class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
              href=3D"mailto:blinux-list@redhat.com"
              moz-do-not-send=3D"true">blinux-list@redhat.com</a> wrote:<br=
>
          </div>
          <blockquote type=3D"cite"
cite=3D"mid:0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com">
            <p>Hello,<br>
              which distribution of LIOS are you using?<br>
              These issues shouldn't be a big deal, LIOS has a bit
              incomplete
              implementation of the scanner protocol, but when this
              happened
              on my machine I could fix it in the code and I believe I
              reported the issues and my solutions back.<br>
              <br>
              Best regards<br>
              <br>
              Rastislav<br>
              <br>
            </p>
            <div class=3D"moz-cite-prefix">D=C5=88a 6. 8. 2024 o 3:48 rodne=
y
              jackson
              nap=C3=ADsal(a):<br>
            </div>
            <blockquote type=3D"cite"
              cite=3D"mid:9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com">
              <pre class=3D"western">I am having issues with Lios, I am hop=
ing someone can help me figure this out.
Scanner I have: epson perfection v39 ii
When trying to run Lios to scan documents
Lios sees the scanner but I get the error below:
Error I get:
Scanner update list error Object has no attribute max_y
I have tried this on Accessible Coconut and Linux mint as well as Debian Bo=
okworm
all other 3<sup>rd</sup> party scanning software on these machines have no =
issues with scanning with this scanner
Any help will be greatly appreciated.
Rodney



</pre>
            </blockquote>
          </blockquote>
        </blockquote>
      </div>
      <p style=3D"margin: 0px 0px 1.2em !important;"></p>
      <div
title=3D"MDH:PHA+SGVsbG8gUm9kbmV5LDxicj50aGUgb2ZmaWNpYWwgcmVwb3NpdG9yeSBvZi=
B0aGUgTElPUyBw
cm9qZWN0IGlzIGhlcmU6PGJyPmh0dHBzOi8vZ2l0aHViLmNvbS96ZW5kYWxvbmEvbGlvczxicj4=
8
YnI+SSBoYXZlIGZvcmtlZCBpdCBhbmQgYXBwbGllZCBteSBmaXhlcyBJIG1hZGUgc29tZSB0aW1=
l
IGFnbyBmb3IgbXkgSFAgbGFzZXJqZXQgc2Nhbm5lci48YnI+aHR0cHM6Ly9naXRodWIuY29tL1J=
h
c3Rpc2xhdktpc2gvbGlvczxicj48YnI+U2VlIHRoZSBzY2FuaW1hZ2VEcml2ZXJGaXggYnJhbmN=
o
LiBJZiB5b3UnZCBsaWtlIHRvIHRyeSBpdCBvdXQsIHRoZXJlIGFyZSB0d28gd2F5cyB0byBkbyB=
p
dCwgdGhlIG1vcmUgY29tcGxpY2F0ZWQgYnV0IGNvcnJlY3QgYW5kIHNpbXBsZXIgYnV0IGhhY2t=
5
Ljxicj48YnI+VGhlIG1vcmUgY29tcGxpY2F0ZWQgaXMgdG8gZ2V0IHJpZCBvZiB5b3VyIGN1cnJ=
l
bnQgbGlvcyBpbnN0YWxsYXRpb24gKHRoaXMgaXMgbmVjZXNzYXJ5IHRvIGF2b2lkIHBhY2thZ2U=
g
Y29sbGlzaW9ucykgYW5kIGluc3RhbGwgdGhlIHByb2dyYW0gZnJvbSB0aGUgZml4IGJyYW5jaCB=
v
ZiBteSByZXBvc2l0b3J5Ojxicj48YnI+YGBgPGJyPmdpdCBjbG9uZSBodHRwczovL2dpdGh1Yi5=
j
b20vUmFzdGlzbGF2S2lzaC9saW9zPGJyPmNkIGxpb3M8YnI+Z2l0IHN3aXRjaCBzY2FuaW1hZ2V=
E
cml2ZXJGaXg8YnI+YGBgPGJyPjxicj5BbmQgaW5zdGFsbCBmcm9tIHNvdXJjZSBhY2NvcmRpbmc=
g
dG8gdGhlIGRvY3VtZW50YXRpb24uPGJyPjxicj5Eb24ndCBmb3JnZXQgdG8gc2VsZWN0IHNjYW5=
p
bWFnZSBkcml2ZXIgdG8gYmUgdXNlZCBpbiB0aGUgTElPUyBzZXR0aW5ncy48YnI+PGJyPkhvd2V=
2
ZXIsIHRoZXJlIGlzIGEgc2ltcGxlciB3YXkuIFRoZSBmaXggYmFzaWNhbGx5IGRlYWxzIHdpdGg=
g
anVzdCBvbmUgZmlsZSwgYW5kIHN5bmNlIFB5dGhvbiBwcm9ncmFtcyBhcmUgbm90IGNvbXBpbGV=
k
LCB5b3UgY2FuIHN3YXAgaXQgb3V0IGZvciB0aGUgbW9kaWZpZWQgdmVyc2lvbiBpbiB0aGUgZXh=
p
c3RpbmcgaW5zdGFsbGF0aW9uIGFuZCBtYWtlIGl0IHdvcmsgdGhpcyB3YXkuIE5vIG5lZWQgdG8=
g
dW5pbnN0YWxsIHlvdXIgY3VycmVudCBzZXR1cCBhbmQgaXQncyByZWxhdGl2ZWx5IHF1aWNrLjx=
i
cj48YnI+SW4gb3JkZXIgdG8gZG8gdGhpcywgeW91IGZpcnN0IG5lZWQgdG8gbG9jYXRlIHdoZXJ=
l
IGRpZCB5b3VyIHN5c3RlbSBpbnN0YWxsIHRoZSBsaW9zIHB5dGhvbiBwYWNrYWdlLiBJdCBsaWt=
l
bHkgcmVzaWRlcyBpbiBvbmUgb2YgdGhlIHB5dGhvbidzIGRpc3QtcGFja2FnZXMgb3Igc2l0ZS1=
w
YWNrYWdlcyBkaXJlY3RvcmllcywgY2hlY2sgL3Vzci9saWIvcHl0aG8sIC91c3IvbG9jYWwvbGl=
i
L3B5dGhvbiBldGMuIFdoZW4geW91IGZpbmQgdGhlIGRpcmVjdG9yeSwgdGhlIGZpbGUgeW91J3J=
l
IGxvb2tpbmcgZm9yIGlzIC4vc2Nhbm5lci9zY2FuaW1hZ2VfZHJpdmVyLnB5PGJyPkNsb25lIG1=
5
IHJlcG9zaXRvcnkgbGlrZSBtZW50aW9uZWQgYWJvdmUsIGRvbid0IGZvcmdldCB0byBzd2l0Y2g=
g
dGhlIGJyYW5jaCBpLmUuPGJyPjxicj5gYGA8YnI+Z2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmN=
v
bS9SYXN0aXNsYXZLaXNoL2xpb3M8YnI+Y2QgbGlvczxicj5naXQgc3dpdGNoIHNjYW5pbWFnZUR=
y
aXZlckZpeDxicj5gYGA8YnI+PGJyPkFuZCBzd2FwIHRoZSBzY2FuaW1hZ2VfZHJpdmVyLnB5LiB=
Z
b3Ugd2lsbCBsaWtlbHkgbmVlZCB0byBkbyB0aGlzIGFzIGEgcm9vdCBzaW5jZSBMSU9TIGlzIHV=
z
dWFsbHkgaW5zdGFsbGVkIGluIGEgcmVhZC1vbmx5IGRpcmVjdG9yeS48YnI+PGJyPkFsc28gbWF=
r
ZSBzdXJlIHRvIHNlbGVjdCBzY2FuaW1hZ2UgYXMgdGhlIHNjYW5uaW5nIGRyaXZlciBpbiB0aGU=
g
TElPUyBzZXR0aW5ncy48YnI+PGJyPkknbSBub3QgcHJvbWlzaW5nIGFueXRoaW5nLCBhcyBJIG1=
l
bnRpb25lZCBiZWZvcmUgdGhpcyB3YXMgYSBzaW1wbGUgZml4IGludGVuZGVkIHRvIG1ha2UgdGh=
l
IHByb2dyYW0gd29yayB3aXRoIG15IHNjYW5uZXIsIGJ1dCBtYXliZSBpdCB3aWxsIHdvcmsgZm9=
y
IHlvdSB0b28sIHRoZSBwcm9ibGVtIHNlZW1zIHNpbWlsYXIuPGJyPjxicj5CZXN0IHJlZ2FyZHM=
8
YnI+PGJyPlJhc3Rpc2xhdjxicj48YnI+PC9wPjxkaXYgY2xhc3M9Im1vei1jaXRlLXByZWZpeCI=
+
RMWIYSA3LiA4LiAyMDI0IG8gMjE6Mzcgcm9kbmV5IGphY2tzb24gbmFww61zYWwoYSk6PGJyPjw=
v
ZGl2PjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDo4MTA3Y2E3My1mNWU4LTRiYzU=
t
OWU4My0yNDYwYzBjYzRkZGJAZ21haWwuY29tIj4KCiAgICAKICAKICAKICAgIDxwPlJhc3Rpc2x=
h
djwvcD4KICAgIDxwPkkgbG9nZ2VkIGludG8gbXkgbGludXggbWludCBtYWNoaW5lIGFuZCB0aGU=
g
dmVyc2lvbiBvZiBMSU9TIGlzCiAgICAgIDIuODwvcD4KICAgIDxwPlJvZG5leTxicj4KICAgIDw=
v
cD4KICAgIDxkaXYgY2xhc3M9Im1vei1jaXRlLXByZWZpeCI+T24gOC83LzIwMjQgMDY6MDUsICd=
S
YXN0aXNsYXYgS2lzaCcgdmlhCiAgICAgIDxhIGNsYXNzPSJtb3otdHh0LWxpbmstYWJicmV2aWF=
0
ZWQgbW96LXR4dC1saW5rLWZyZWV0ZXh0IiBocmVmPSJtYWlsdG86YmxpbnV4LWxpc3RAcmVkaGF=
0
LmNvbSIgbW96LWRvLW5vdC1zZW5kPSJ0cnVlIj5ibGludXgtbGlzdEByZWRoYXQuY29tPC9hPiB=
3
cm90ZTo8YnI+CiAgICA8L2Rpdj4KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1=
p
ZDowMDQ4YTU3My04YTcxLTRmZTktOTQ0NS0wN2Q0NjNjNjliNjlAcHJvdG9ubWFpbC5jb20iPgo=
g
ICAgICAKICAgICAgPHA+SGVsbG8sPGJyPgogICAgICAgIHdoaWNoIGRpc3RyaWJ1dGlvbiBvZiB=
M
SU9TIGFyZSB5b3UgdXNpbmc/PGJyPgogICAgICAgIFRoZXNlIGlzc3VlcyBzaG91bGRuJ3QgYmU=
g
YSBiaWcgZGVhbCwgTElPUyBoYXMgYSBiaXQgaW5jb21wbGV0ZQogICAgICAgIGltcGxlbWVudGF=
0
aW9uIG9mIHRoZSBzY2FubmVyIHByb3RvY29sLCBidXQgd2hlbiB0aGlzIGhhcHBlbmVkCiAgICA=
g
ICAgb24gbXkgbWFjaGluZSBJIGNvdWxkIGZpeCBpdCBpbiB0aGUgY29kZSBhbmQgSSBiZWxpZXZ=
l
IEkKICAgICAgICByZXBvcnRlZCB0aGUgaXNzdWVzIGFuZCBteSBzb2x1dGlvbnMgYmFjay48YnI=
+
CiAgICAgICAgPGJyPgogICAgICAgIEJlc3QgcmVnYXJkczxicj4KICAgICAgICA8YnI+CiAgICA=
g
ICAgUmFzdGlzbGF2PGJyPgogICAgICAgIDxicj4KICAgICAgPC9wPgogICAgICA8ZGl2IGNsYXN=
z
PSJtb3otY2l0ZS1wcmVmaXgiPkTFiGEgNi4gOC4gMjAyNCBvIDM6NDggcm9kbmV5IGphY2tzb24=
K
ICAgICAgICBuYXDDrXNhbChhKTo8YnI+CiAgICAgIDwvZGl2PgogICAgICA8YmxvY2txdW90ZSB=
0
eXBlPSJjaXRlIiBjaXRlPSJtaWQ6OTIzMzgyNGMtZGQwNC00MGZmLWFjZGYtZmJiMjZjNmUxZDJ=
j
QGdtYWlsLmNvbSI+CiAgICAgICAgPHByZSBjbGFzcz0id2VzdGVybiI+SSBhbSBoYXZpbmcgaXN=
z
dWVzIHdpdGggTGlvcywgSSBhbSBob3Bpbmcgc29tZW9uZSBjYW4gaGVscCBtZSBmaWd1cmUgdGh=
p
cyBvdXQuClNjYW5uZXIgSSBoYXZlOiBlcHNvbiBwZXJmZWN0aW9uIHYzOSBpaQpXaGVuIHRyeWl=
u
ZyB0byBydW4gTGlvcyB0byBzY2FuIGRvY3VtZW50cwpMaW9zIHNlZXMgdGhlIHNjYW5uZXIgYnV=
0
IEkgZ2V0IHRoZSBlcnJvciBiZWxvdzoKRXJyb3IgSSBnZXQ6CglTY2FubmVyIHVwZGF0ZSBsaXN=
0
IGVycm9yIE9iamVjdCBoYXMgbm8gYXR0cmlidXRlIG1heF95CkkgaGF2ZSB0cmllZCB0aGlzIG9=
u
IEFjY2Vzc2libGUgQ29jb251dCBhbmQgTGludXggbWludCBhcyB3ZWxsIGFzIERlYmlhbiBCb29=
r
d29ybQphbGwgb3RoZXIgMzxzdXA+cmQ8L3N1cD4gcGFydHkgc2Nhbm5pbmcgc29mdHdhcmUgb24=
g
dGhlc2UgbWFjaGluZXMgaGF2ZSBubyBpc3N1ZXMgd2l0aCBzY2FubmluZyB3aXRoIHRoaXMgc2N=
h
bm5lcgpBbnkgaGVscCB3aWxsIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuClJvZG5leQoKCgo8L3B=
y
ZT4KICAgICAgPC9ibG9ja3F1b3RlPgogICAgPC9ibG9ja3F1b3RlPgogIAoKPC9ibG9ja3F1b3R=
l
Pg=3D=3D" aria-hidden=3D"true"
style=3D"height:0;width:0;max-height:0;max-width:0;overflow:hidden;font-siz=
e:0;padding:0;margin:0;">=E2=80=8B</div>
    </div>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1_JoKhOBmrkY4Jq80vtHbRKhaowCpRfiRVrMqaQpG5k--

