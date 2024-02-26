Return-Path: <blinux-list+bncBCVPTHE7K4IKBS7PVYDBUBHKUGVH4@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A96866776
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 02:13:05 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-68f71d9992csf39953966d6.2
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 17:13:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708909984; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWVDF04VCCguFOxht7S6MzIWzVcqNZcqV8UxDrZIjcg9OUj21LSKhRGFgSqIRDSfKl
         zPQuIM0ZdNuhZ6bhyjnH4UQA1vctVKw3nSJ2u5Oz+LM7+e4PXTebsQq6SAJFyi2UcpEA
         oLhLL77ag9N7tKWpb1Ys7kLOqnFePSmPnylzf2WoXQaf39VtAZbNnfEawHX0PH9vPEyT
         yQIAYtbedquyDFlhm2Xa4CjQY2FOUCKJTnH6BBiS+RxZLcA/v/6BS55jvKrWdLpT2LmE
         qSIhk7XHrqKZsZrW8IuPpoVZIttfREbb3dPqhCiyax6l91g0j+qaKRcfzKkZ8Lbme2Cz
         l1SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=KS/DOfua3MnLQFfAiqObzP/NJ52TpgI6XVXjjtFiEzU=;
        fh=9neN/csncf+XqoPRCfDc3cr4jFBsEDwNpVkAqxdUwvw=;
        b=Bm0LMbl6Ryl/WKk6HErRe3xKUjcJcJ8Uyo46eNLu6v4jsT7WXLK5DBwv0IJibElOZE
         le8nh7pqS5bWxonueyXOE/CaBp/It5qx2aQI0+oI6NcCxpZG/C3SKHu+7Ks+JX5jaKyg
         bbYXlVPPkQ81ioSK/1xaT1fMbqSAVtExyQJ0Vk8LcYJNrBMYiwp45r5Bar81UDrb5VH1
         kdZTGha0Fo2CjyoeohGCjzzyVJBxiu0k1WC/k6YRS53gAzPQaoPpESJ12U8nrSR6kBfs
         cpRX1Pp/j7HDb9sKBmaOZuwJzyF1Dm8gI2jyaI8s68EBMw0RZ2bwM1yLV0XsOQmxHsqJ
         eIrg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708909984; x=1709514784;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KS/DOfua3MnLQFfAiqObzP/NJ52TpgI6XVXjjtFiEzU=;
        b=be5SsNt+ISkp7GTS0w9yFJFDvgDGCJNTdkTOXI0BYzLi6IJ0xQn0s9iSiVkw8tT1vn
         Ys4Nnc8eHJc0NEgctFgjDrRMqLMRQ+76szSx4JgAGDXmlEEq9ri9hh0NogHzsy7g1oSL
         YvZQQ2eBxh9yTfU1nfKlQQp7YiQOZk0u+BgbC83ecS0Y2s6qgcTmlo1/L3q3ajzY+yaO
         6aaHsPrriSxRN8pri5dsG4i/fn0pehSJTFx1dmWSvGydxeeLmaZ0n7BgLN9W3HHFVIMj
         zTG6ZxjlM816WQwX7PYSbw/fPCP5HKvhYq6FsxjvkjRE+DgmKgyW0dhWdQb0usaOEeao
         J2ow==
X-Forwarded-Encrypted: i=2; AJvYcCVpVUXi9iZDg+/SmJ0/zpWHq6fAYXlzBHfSpliT0WhHAfGMeAG1RvUYJyeRKU+rQJvAVrhzpbUMrmXYRAZJUW45GzxTuumzCQ15
X-Gm-Message-State: AOJu0YwN2JELzUGUp8OGRQQu3JbxBdTeIAOpWgM86ErIAU4eTKs0WWR7
	SExMDXLSQN4qaFnB7bGtwNbOUNU2CAtjmZxK9lgbNqiDWsGxzivextWsWtAuEZs=
X-Google-Smtp-Source: AGHT+IEA7JLpEPK0xVIpZ2nihCIlV6paAlnx0JsKyHdv2qPy+LSM9cT7yBIp8IRXwl7o/+36LdBY0w==
X-Received: by 2002:a0c:f093:0:b0:68f:b99e:a7e6 with SMTP id g19-20020a0cf093000000b0068fb99ea7e6mr6766614qvk.41.1708909984347;
        Sun, 25 Feb 2024 17:13:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5aa2:0:b0:68f:a310:c156 with SMTP id u2-20020ad45aa2000000b0068fa310c156ls3967283qvg.1.-pod-prod-06-us;
 Sun, 25 Feb 2024 17:13:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVKY81l2IE92bpPRimlEeASLYH/IMStgcqN/YncmqpVOvCXwltBChlS9tSgJGAxUwPlqOW5dmcjo6OPOpVY81oUd/0r/HJa2RCzodXU
X-Received: by 2002:a05:620a:1a29:b0:787:af5c:617c with SMTP id bk41-20020a05620a1a2900b00787af5c617cmr8952658qkb.26.1708909983704;
        Sun, 25 Feb 2024 17:13:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708909983; cv=none;
        d=google.com; s=arc-20160816;
        b=SWy24tD/ZHJATEtt1Bc5SNgKUZaINJ7eKpK2rkX3DuP4T47XSAPJBd/vpXuwAvKs/z
         v+LDy2mOIQhxnpodTwaZsrOs+b7IWUukoJJTT4zN2IR91KKsuRLZ4dGbF5Yh9JUqSOXE
         FhHOiEFbP3SsMPEd2xI0QKRTiFklat6oH9aumDguz9nsAYb+cM+lzUBeisn0oC3fHnvs
         1bEec2jLM6H53iuH/Qi+hLH9H7+FTtVJUF5z7ljZAt0nf3E9nt7qYzBAsSCkMYIIP8KO
         lRIBEi2tGrxBHqBMNX7xUxFf3YQCe3X/7YLmmXeEWsBMVWa8yE/a/wl+xVHs+N/FZcLg
         nTPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=KS/DOfua3MnLQFfAiqObzP/NJ52TpgI6XVXjjtFiEzU=;
        fh=xvOdjg+R+8QCFFxjy/qkTC2e35GoRSQ2poFgKNGor+E=;
        b=GaylnnWfKRnjVky3BQ9NMDxgQ7b6PpspqkxAodg4eW+eE7cLKCQHcddydBXLmSr40+
         G4A9MTA5LrURcPziVJPT27OQpy/37v3AcwbULTt7cXdrVOUmxNkkXMbLCR0izJpYapHZ
         rxygBt3uc8DPyXoz6peNTfBCRgF1ZfS27iZ7GDkaogrWpME/gU9pzN66lnJEj9wXuxoA
         gsHmtKOECVIMDNRm/n5eSbNh+2BGcbjLSEn5XAyByELTGWRFSI6JgyngSU32Xr46FZcj
         s/hIIY6iklKKzJ8gqxHSVaMrHpkbACLFqFnq5hMQZHb9vX5mTtoSOxm0kf6IbTBP5/QW
         l9AQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id u6-20020ae9c006000000b00787b81d4660si4059638qkk.670.2024.02.25.17.13.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 17:13:03 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-528-gfgSh2TmN7WL_Nr-xyHJ4Q-1; Sun, 25 Feb 2024 20:13:02 -0500
X-MC-Unique: gfgSh2TmN7WL_Nr-xyHJ4Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 404491025620
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 01:13:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3D578492BE5; Mon, 26 Feb 2024 01:13:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05D99492BD7
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:13:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD8C91025627
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:13:01 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-12-Zcw28RztOJuHWbkoURQHYA-1; Sun,
 25 Feb 2024 20:12:59 -0500
X-MC-Unique: Zcw28RztOJuHWbkoURQHYA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id C343A4050A;
	Sun, 25 Feb 2024 20:12:58 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 6FDDD100BE8; Sun, 25 Feb 2024 20:12:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 6E19710007F;
	Sun, 25 Feb 2024 20:12:58 -0500 (EST)
Date: Sun, 25 Feb 2024 20:12:58 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tom Masterson <kd7cyu@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: pandoc and the docs format?
In-Reply-To: <DC5F0B21-AA30-43BB-BD6F-610365CA6A55@gmail.com>
Message-ID: <Pine.LNX.4.64.2402252012020.898187@users.shellworld.net>
References: <Pine.LNX.4.64.2402252001160.897936@users.shellworld.net>
 <DC5F0B21-AA30-43BB-BD6F-610365CA6A55@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-695885442-1708909978=:898187"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-695885442-1708909978=:898187
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Indeed, it worked like a charm.
Kare



On Sun, 25 Feb 2024, Tom Masterson wrote:

> If you are after a text file your best bet is docx2txt which I use all th=
e time.  Pandoc should be able to do this but I don=E2=80=99t have my compu=
ter handy too look at the syntax.  The man page is fairly complete.
>
> Tom
> Sent from my iPhone
>
>> On Feb 25, 2024, at 17:03, Karen Lewellen <klewellen@shellworld.net> wro=
te:
>>
>> =EF=BB=BFI imagine this was intended for the list.
>> I have no idea if this program is here, but the suggestion seems kind of=
 odd, speaking personally?
>> Bit of a time factor for me too,  I wish to complete the associated form=
 tonight.
>> Thanks,
>> Kare
>>
>>
>>
>>> On Sun, 25 Feb 2024, Paul Merrell wrote:
>>>
>>> On Sun, Feb 25, 2024 at 4:38=E2=80=AFPM Karen Lewellen <klewellen@shell=
world.net>
>>> wrote:
>>>
>>>
>>>> Because the format if not actually a word . doc file, antiword will no=
t
>>>> convert them.
>>>> Ideas?
>>>
>>>
>>> Use LibreOffice Writer to convert the .docx to .doc?
>
--1949452079-695885442-1708909978=:898187--

