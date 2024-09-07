Return-Path: <blinux-list+bncBDYIZZNASAHRBJH26G3AMGQET5DXMXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id C42E3970321
	for <lists+blinux-list@lfdr.de>; Sat,  7 Sep 2024 18:19:50 +0200 (CEST)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-277ea697514sf3564589fac.2
        for <lists+blinux-list@lfdr.de>; Sat, 07 Sep 2024 09:19:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725725989; cv=pass;
        d=google.com; s=arc-20240605;
        b=BpgecLddVMISPf1k/csCyXs0FEpmRpu5+/b7FUqoVJAIwuVz61AABbJcdSqq+KhXjM
         dIffDpnTLF57xZ1KpnGgjLzYW2ZENObzY9q14XQRlutGNdd0SuL5NWBxHbbEZv4UF/hU
         YszGzXJ9o5cx28FqImcRi2HaDPT9NxRQOVamN1Qna6db/NoZ26U2tiqlf4lISFvcIlsZ
         mvxlh6L/TG9yhM0yd32IDkXLQQQKMpow8Z+wAaMeWTbosZqZ0QvXqNML7Ue92/efsfiS
         V2CHewaYVwOtx1mQW0N00kj7My+hOR3KT9JA0DyPBtCBQ9vPPYzJefznFQHPWPfUfBtr
         QxDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=n/tBOusgqesPORTh4bIRfUsjuS/RIXTNib2EirYzaZU=;
        fh=/yM/kyGBologIUuVuzQEpJHxkSj+D0B5yJxG78XEV48=;
        b=JRyyD11R2EHYMlhu51fPI/VZPrJBM9jAo7viPsWOIN4hYCbjXkUA2tmEtl0nyaD4jc
         G7LGh4MFOtyVXtx1UWY6ZlzPMHCRr+1qkYnJEiVtpoFgghO2YX7xgVrn4Aokpo76M9yl
         DX8fRkS5f3UunPK45QwEXaH2tvhl7uvRqvSZ6OK8+o95QbwDQyaGSwM/1+eS4sVah8nb
         tmE98JjGrfsrAdbjlMOfv0NqU5i0Cqt8w/u7qbB8+epsKRycLfv87d7XOZHZ3I5IFCmd
         Y7quWLZfn1ZB2e3Ng+9rqeWS2C+1t7wAlrUDoGOi52OM/n3Wx09B69iBg4BDj9dtfVtJ
         jMJw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.43 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725725989; x=1726330789;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n/tBOusgqesPORTh4bIRfUsjuS/RIXTNib2EirYzaZU=;
        b=WOT8AeDwVb0VLUg0ZZDuOUaXT4bfZUKQUf/TSbc80+Hla5Ci5CZNduxXJ6jM0JMYkQ
         nwzRssYJVqN1TAGLD0Yt6Fafbaog5TUMZRqSLV2KS5OLy9z2WBjuvARBl8UUJqdjocmM
         0gnIMW+4kXtrUHG855vHwJmLAz2IL+DhTOIUJ4mwhk5sGFwVSqvVbPYlLVnbhoYnPA5Z
         7HCx3yGzR7Oum6wbXILlp8/oUSTRB1Ov9HQ6+l7NUBgtnubV6QmpTR+R3jUjwbfmkrF7
         REIrvXpnL1zOjbV7FCmmU08j/2J1Kayr9aZaGJ4fTh/Z5oQ1V8kZJ5HeBzM/rTrAcgYu
         u1oA==
X-Forwarded-Encrypted: i=2; AJvYcCWVORBN24Fkx0D1md7077YE9If1whN9C8qduYrdc4gN6ln2jYCAHwuLKSz5C75ER2wilU5RdQ==@lfdr.de
X-Gm-Message-State: AOJu0YzN+ixwk9zecqUF+eCrBz5c2xOIP3450vcHSi7bK1VJjYU/YM9I
	vPW/Nw07uoYkD1joNsBfhEIyvnhWC4URQWFVRjhVrYRmHTorpenJsolI/5QZW30=
X-Google-Smtp-Source: AGHT+IGQZ3RDifsq+ZJHAXXUgra61kbM3Gqo/5F+Uo9EE6ZaAaxJwSSXitNF/niZArpqPMbSo7eguw==
X-Received: by 2002:a05:6870:1494:b0:277:e2fb:4035 with SMTP id 586e51a60fabf-27b82ed9988mr7858108fac.27.1725725988880;
        Sat, 07 Sep 2024 09:19:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:9e95:b0:277:de3a:8aab with SMTP id
 586e51a60fabf-27b823fef1bls2144227fac.2.-pod-prod-04-us; Sat, 07 Sep 2024
 09:19:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX50O/hz2x3oX5BSS/XQ/PbxPUj3EiH+Dr9nyRW9cC/pl5i5OHp+ADP7yahztHD1eGCnQB4fLbNKZ/1mQ==@gapps.redhat.com
X-Received: by 2002:a05:6359:7c1f:b0:1b7:f595:d0ed with SMTP id e5c5f4694b2df-1b83859fefdmr752930155d.1.1725725987909;
        Sat, 07 Sep 2024 09:19:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725725987; cv=none;
        d=google.com; s=arc-20240605;
        b=i/w2x3U+AyqjXlw+hzfElhkAzZv4IFjIeMSutat9XOoyD6GireGFqMEsZJ8wIhCZUh
         pdYdD+ctOwExoetZJLtU+8bzU3GOXrhOvoLJfWjg1k9ztd4iCt5dxaQb2L1SDwVntnxW
         OvJ2HxsbTFfJVdNuE2Y+alxNXtZVGymJU7YbhgLo7EZx4539gcwiRVFlAxG/QhXyKsZl
         gNOZBhEF9j6KiSkcDx6KaWHOOglrZvT41DQz1vodTZ7OZtp8vrSWRo0Di7IgRucsTWDb
         MkVlwFkWCANaxljO7UYqxOmbwiTPlbms1aqvN2d8WnMNBpYsrfL4Vv4b2knFhdYgFzeM
         W9QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=xNnL94pzHpXvJTos22kvonIuclrFm8KIbpoO1F1UA9E=;
        fh=QvIYV+7mgiKE3aa92WVrKr3AuJyjO3FZFTe3tYe9U9g=;
        b=F86vAIPU73RWEq2xfDM2OFZ1aMQ5V3PTuqL4rQYjMn/vq7u2vdghidE1GictX5zVt6
         0BNK+ZLr3XO9hLNzkmFs8w1iM+krARzbwGeZfI6wWmhKcavMOh7JW7POnHjd0mEz64FS
         foQpfHI5q5vSbwMnWkqMDV8YotdaQL0dyCbRVWJveTaVAXXK09NYdvu+VSQdYDo4wGCc
         anrE9Ifi3a7lO3MEPwmQ6kHpbSn6pRDn9j3ljogiDPDmMi31aa6Z2iOmGudVv/YFbu7a
         OA2MjYczxiBH0x85oiPe6W9KgSniKzr71maIDb875QjHWx1+HtFHDcOJ1Ba0h6zVXgh2
         we0w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.43 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-45822f3f4e0si14163561cf.279.2024.09.07.09.19.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2024 09:19:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.43 as permitted sender) client-ip=209.85.210.43;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-26-siwxNOw4Nkyk0qoqoLED3A-1; Sat,
 07 Sep 2024 12:19:46 -0400
X-MC-Unique: siwxNOw4Nkyk0qoqoLED3A-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B228C19560B5
	for <blinux-list@gapps.redhat.com>; Sat,  7 Sep 2024 16:19:45 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AC14A3001476; Sat,  7 Sep 2024 16:19:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A87BB3000239
	for <blinux-list@redhat.com>; Sat,  7 Sep 2024 16:19:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E293419560B5
	for <blinux-list@redhat.com>; Sat,  7 Sep 2024 16:19:44 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-78-LNNcdMjfMluRurcQ7WGgqQ-1; Sat, 07 Sep 2024 12:19:41 -0400
X-MC-Unique: LNNcdMjfMluRurcQ7WGgqQ-1
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-710e1a48130so40574a34.1
        for <blinux-list@redhat.com>; Sat, 07 Sep 2024 09:19:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXNJGM4Tveh+v+MNjiqkddyKLkgj15cmxPvaFWrmXuGjLrs6NwXigIhVDXOyQQq0VbVaiAzxX/GJpQ6rQ==@redhat.com
X-Received: by 2002:a05:6830:4494:b0:703:6434:aba8 with SMTP id 46e09a7af769-710d556ad9bmr3567360a34.0.1725725979487;
        Sat, 07 Sep 2024 09:19:39 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-710d9d4fc75sm383868a34.26.2024.09.07.09.19.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Sep 2024 09:19:39 -0700 (PDT)
Message-ID: <0add8986-e606-4f2b-bd2b-f62ef08f1b4b@gmail.com>
Date: Sat, 7 Sep 2024 11:19:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Lios
To: Rastislav Kish <rastislav.kish@protonmail.com>, blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
 <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
 <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
 <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
 <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
 <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
 <0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com>
 <8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com>
 <bb57aa41-fa00-4cfe-a367-1a7a50251211@protonmail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <bb57aa41-fa00-4cfe-a367-1a7a50251211@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative;
 boundary="------------fIDwPrLSRp0AND8gzUOkU0AC"
Content-Language: en-US
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.210.43 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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
--------------fIDwPrLSRp0AND8gzUOkU0AC
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Rastislav,

I did not have much luck with the epson scanner,=C2=A0 however i just order=
 the

Canon CanoScan LIDE400 Document Scanner, which i ordered from amazon.
and even though Linux mint 22 found and installed  the driver LIOS still di=
d not work right and i think it is because it did not install  all the depe=
ndencies.
so i went to Canon site and downloaded the driver for linux and installed i=
t and rebooted system.
and now  LIOS works great.  I scanned a few documents my wife got from doct=
ors office and i was impressed how accurate it was.
this week i plan on testing on other distros.

Thank you for all your help.
Rodney
On 8/7/2024 18:43, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>
> Hello Rodney,
> the official repository of the LIOS project is here:
> https://github.com/zendalona/lios
>
> I have forked it and applied my fixes I made some time ago for my HP=20
> laserjet scanner.
> https://github.com/RastislavKish/lios
>
> See the scanimageDriverFix branch. If you=E2=80=99d like to try it out, t=
here=20
> are two ways to do it, the more complicated but correct and simpler=20
> but hacky.
>
> The more complicated is to get rid of your current lios installation=20
> (this is necessary to avoid package collisions) and install the=20
> program from the fix branch of my repository:
>
> |git clone https://github.com/RastislavKish/lios cd lios git switch=20
> scanimageDriverFix |
>
> And install from source according to the documentation.
>
> Don=E2=80=99t forget to select scanimage driver to be used in the LIOS se=
ttings.
>
> However, there is a simpler way. The fix basically deals with just one=20
> file, and synce Python programs are not compiled, you can swap it out=20
> for the modified version in the existing installation and make it work=20
> this way. No need to uninstall your current setup and it=E2=80=99s relati=
vely=20
> quick.
>
> In order to do this, you first need to locate where did your system=20
> install the lios python package. It likely resides in one of the=20
> python=E2=80=99s dist-packages or site-packages directories, check=20
> /usr/lib/pytho, /usr/local/lib/python etc. When you find the=20
> directory, the file you=E2=80=99re looking for is=20
> ./scanner/scanimage_driver.py <http://driver.py>
> Clone my repository like mentioned above, don=E2=80=99t forget to switch =
the=20
> branch i.e.
>
> |git clone https://github.com/RastislavKish/lios cd lios git switch=20
> scanimageDriverFix |
>
> And swap the scanimage_driver.py <http://driver.py>. You will likely=20
> need to do this as a root since LIOS is usually installed in a=20
> read-only directory.
>
> Also make sure to select scanimage as the scanning driver in the LIOS=20
> settings.
>
> I=E2=80=99m not promising anything, as I mentioned before this was a simp=
le=20
> fix intended to make the program work with my scanner, but maybe it=20
> will work for you too, the problem seems similar.
>
> Best regards
>
> Rastislav
>
> D=C5=88a 7. 8. 2024 o 21:37 rodney jackson nap=C3=ADsal(a):
>>
>> Rastislav
>>
>> I logged into my linux mint machine and the version of LIOS is 2.8
>>
>> Rodney
>>
>> On 8/7/2024 06:05, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>>
>>> Hello,
>>> which distribution of LIOS are you using?
>>> These issues shouldn't be a big deal, LIOS has a bit incomplete=20
>>> implementation of the scanner protocol, but when this happened on my=20
>>> machine I could fix it in the code and I believe I reported the=20
>>> issues and my solutions back.
>>>
>>> Best regards
>>>
>>> Rastislav
>>>
>>> D=C5=88a 6. 8. 2024 o 3:48 rodney jackson nap=C3=ADsal(a):
>>>> I am having issues with Lios, I am hoping someone can help me figure t=
his out.
>>>> Scanner I have: epson perfection v39 ii
>>>> When trying to run Lios to scan documents
>>>> Lios sees the scanner but I get the error below:
>>>> Error I get:
>>>> Scanner update list error Object has no attribute max_y
>>>> I have tried this on Accessible Coconut and Linux mint as well as Debi=
an Bookworm
>>>> all other 3^rd    party scanning software on these machines have no is=
sues with scanning with this scanner
>>>> Any help will be greatly appreciated.
>>>> Rodney
>>>>
>>>>
>>>>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------fIDwPrLSRp0AND8gzUOkU0AC
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p style=3D"margin: 0px 0px 1.2em !important;">Rastislav,</p>
    <p style=3D"margin: 0px 0px 1.2em !important;">I did not have much
      luck with the epson scanner,=C2=A0 however i just order the <br>
    </p>
    <pre class=3D"western">Canon CanoScan LIDE400 Document Scanner, which i=
 ordered from amazon. =20
and even though Linux mint 22 found and installed  the driver LIOS still di=
d not work right and i think it is because it did not install  all the depe=
ndencies.
so i went to Canon site and downloaded the driver for linux and installed i=
t and rebooted system. =20
and now  LIOS works great.  I scanned a few documents my wife got from doct=
ors office and i was impressed how accurate it was.
this week i plan on testing on other distros.
</pre>
    <p></p>
    <div class=3D"moz-cite-prefix">Thank you for all your help.</div>
    <div class=3D"moz-cite-prefix">Rodney<br>
    </div>
    <div class=3D"moz-cite-prefix">On 8/7/2024 18:43, 'Rastislav Kish' via
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:blinux-list@redh=
at.com">blinux-list@redhat.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:bb57aa41-fa00-4cfe-a367-1a7a50251211@protonmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
      <div class=3D"markdown-here-wrapper" data-md-url=3D"" style=3D"">
        <p style=3D"margin: 0px 0px 1.2em !important;">Hello Rodney,<br>
          the official repository of the LIOS project is here:<br>
          <a href=3D"https://github.com/zendalona/lios"
            class=3D"moz-txt-link-freetext" moz-do-not-send=3D"true">https:=
//github.com/zendalona/lios</a></p>
        <p style=3D"margin: 0px 0px 1.2em !important;">I have forked it
          and applied my fixes I made some time ago for my HP laserjet
          scanner.<br>
          <a href=3D"https://github.com/RastislavKish/lios"
            class=3D"moz-txt-link-freetext" moz-do-not-send=3D"true">https:=
//github.com/RastislavKish/lios</a></p>
        <p style=3D"margin: 0px 0px 1.2em !important;">See the
          scanimageDriverFix branch. If you=E2=80=99d like to try it out, t=
here
          are two ways to do it, the more complicated but correct and
          simpler but hacky.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">The more
          complicated is to get rid of your current lios installation
          (this is necessary to avoid package collisions) and install
          the program from the fix branch of my repository:</p>
        <pre
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;font-size: =
1em; line-height: 1.2em;margin: 1.2em 0px;"><code
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;margin: 0px=
 0.15em; padding: 0px 0.3em; white-space: pre-wrap; font-weight: 550; backg=
round-color: rgba(119, 119, 119, 0.3); border-radius: 3px; display: inline;=
white-space: pre; overflow: auto; border-radius: 3px; border: 1px solid rgb=
(204, 204, 204); padding: 0.5em 0.7em; display: block;">git clone <a
        class=3D"moz-txt-link-freetext"
        href=3D"https://github.com/RastislavKish/lios"
        moz-do-not-send=3D"true">https://github.com/RastislavKish/lios</a>
cd lios
git switch scanimageDriverFix
</code></pre>
        <p style=3D"margin: 0px 0px 1.2em !important;">And install from
          source according to the documentation.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Don=E2=80=99t forget=
 to
          select scanimage driver to be used in the LIOS settings.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">However, there is a
          simpler way. The fix basically deals with just one file, and
          synce Python programs are not compiled, you can swap it out
          for the modified version in the existing installation and make
          it work this way. No need to uninstall your current setup and
          it=E2=80=99s relatively quick.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">In order to do
          this, you first need to locate where did your system install
          the lios python package. It likely resides in one of the
          python=E2=80=99s dist-packages or site-packages directories, chec=
k
          /usr/lib/pytho, /usr/local/lib/python etc. When you find the
          directory, the file you=E2=80=99re looking for is ./scanner/scani=
mage_<a
            href=3D"http://driver.py" moz-do-not-send=3D"true">driver.py</a=
><br>
          Clone my repository like mentioned above, don=E2=80=99t forget to
          switch the branch i.e.</p>
        <pre
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;font-size: =
1em; line-height: 1.2em;margin: 1.2em 0px;"><code
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;margin: 0px=
 0.15em; padding: 0px 0.3em; white-space: pre-wrap; font-weight: 550; backg=
round-color: rgba(119, 119, 119, 0.3); border-radius: 3px; display: inline;=
white-space: pre; overflow: auto; border-radius: 3px; border: 1px solid rgb=
(204, 204, 204); padding: 0.5em 0.7em; display: block;">git clone <a
        class=3D"moz-txt-link-freetext"
        href=3D"https://github.com/RastislavKish/lios"
        moz-do-not-send=3D"true">https://github.com/RastislavKish/lios</a>
cd lios
git switch scanimageDriverFix
</code></pre>
        <p style=3D"margin: 0px 0px 1.2em !important;">And swap the
          scanimage_<a href=3D"http://driver.py" moz-do-not-send=3D"true">d=
river.py</a>.
          You will likely need to do this as a root since LIOS is
          usually installed in a read-only directory.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Also make sure to
          select scanimage as the scanning driver in the LIOS settings.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">I=E2=80=99m not prom=
ising
          anything, as I mentioned before this was a simple fix intended
          to make the program work with my scanner, but maybe it will
          work for you too, the problem seems similar.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Best regards</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Rastislav</p>
        <div class=3D"markdown-here-exclude">
          <div class=3D"moz-cite-prefix">D=C5=88a 7. 8. 2024 o 21:37 rodney
            jackson nap=C3=ADsal(a):<br>
          </div>
        </div>
        <div class=3D"markdown-here-exclude">
          <blockquote type=3D"cite"
            cite=3D"mid:8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com">
            <p>Rastislav</p>
            <p>I logged into my linux mint machine and the version of
              LIOS is 2.8</p>
            <p>Rodney<br>
            </p>
            <div class=3D"moz-cite-prefix">On 8/7/2024 06:05, 'Rastislav
              Kish' via <a
                class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                href=3D"mailto:blinux-list@redhat.com"
                moz-do-not-send=3D"true">blinux-list@redhat.com</a> wrote:<=
br>
            </div>
            <blockquote type=3D"cite"
cite=3D"mid:0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com">
              <p>Hello,<br>
                which distribution of LIOS are you using?<br>
                These issues shouldn't be a big deal, LIOS has a bit
                incomplete implementation of the scanner protocol, but
                when this happened on my machine I could fix it in the
                code and I believe I reported the issues and my
                solutions back.<br>
                <br>
                Best regards<br>
                <br>
                Rastislav<br>
                <br>
              </p>
              <div class=3D"moz-cite-prefix">D=C5=88a 6. 8. 2024 o 3:48 rod=
ney
                jackson nap=C3=ADsal(a):<br>
              </div>
              <blockquote type=3D"cite"
cite=3D"mid:9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com">
                <pre class=3D"western">I am having issues with Lios, I am h=
oping someone can help me figure this out.
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
      </div>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------fIDwPrLSRp0AND8gzUOkU0AC--

