Return-Path: <blinux-list+bncBCWIB27NVECBBXMY3W2QMGQE3EFRLSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id AF16A94DC6C
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 13:17:51 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b95de1f6a2sf40781896d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 04:17:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723288670; cv=pass;
        d=google.com; s=arc-20160816;
        b=0QLjnmPwrfDkECpnTrgZ2342iHFREGFWxjXY9opuOfcjJ5oQE1apS8+ugN+r7XwSMD
         nhBIgnSP7YpvtjHLJRmndx7LZFZpCNgWjHYOZA5dNt7uyd9WAA2UoFiIdis/JLSOmk3v
         QoQZl5jceqXlNfavHDBl4Oc929qzTCLZ8YlyEw7HhMomx2TcvCshK6zk09VN7A6q3wU9
         Rwc5u5401oHuiXz5OAvwscjJwh3sfyatcJq6OQajLyHFH4p0iwaCNM4N6S/yFJHkUu+C
         DnmPa/LKHFLCFDl5UjBRQ21IBst33N/+CGawmNji86o4nYWApl27wVAId4TO0PyRULkR
         P9XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dmarc-filter:delivered-to;
        bh=UFzo1lQpUABYDeRxk/UR/CtryDoqcvyo0EELxcoPAXs=;
        fh=yUrhbScvztduUHixaoEucivQ+5fVI6eO98UZyZM8IuI=;
        b=tqdFUrUDuAGczlwgGJq+0HsHqiHhnYEf3b/6i2GAQe8mbNzAbLxEmO7mr7TN6Rcl9K
         wPO1Pq3HY5E3qKwTEEp0tcjBEX/nRkqfEjEElGyvT8CbrqjrnYFhNTq9GoNGBKORNOUJ
         KcmyHftoyjDkOi/0n/q9Lp2yxFX6+5BsB7viISL2oqA5CnYF15aZ/YQSOvRKypFvwRcT
         ljUDHzatgINkW0RymQMeA4gTFfXrKSQ2cKvQzGrJ0Y2QhZlmwsVF78nCO+6UH57yr1Zp
         ko1aTJuhfGEh3hlDYveR+b2dTnKW6oZIHRWNKuRorJIGo7Xl3FW7v6gu76n931puRo27
         HUwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723288670; x=1723893470;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dmarc-filter:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UFzo1lQpUABYDeRxk/UR/CtryDoqcvyo0EELxcoPAXs=;
        b=hBFv1y8/sTO0jTeLeg+lYs+9x59xccwP7h5O5AUDFY2orgsJ0CVgqdzT4uvZjfkPFp
         nrZJ2B5HQf6KO8dX30iw2y2deFnW3XUAO8Yzpyx/O3mRPbHQ1u0yU/RLWg0vMCaXW3jf
         OFGVenVbmzIaWvioxEjGqWlp61QYdonPvmPj5ww7G17h3npBXhLHVnuomrcI9Athxv1G
         YmJ97O47BArDHGzYllkWkW3GFr90yd13zOrgz/eiQkmWtDLFr72SAoXOdIUnZSxSFGGk
         ZCbxOpZLE24VRYEz2Qv9kQ8PpWtfrik34JPIzb9M79dxVj2mBx7/YtHudajtqiW7CJzh
         0Q8w==
X-Forwarded-Encrypted: i=2; AJvYcCWoy+DpkJUK2Mdlem9txE4/GRTzWRL9PI5RCi7g4qxzmLMXdCjVgB5bOe4ksVVcGY697iokXgfGUE2fTTBeW8eSwkLU0kTJbAcR
X-Gm-Message-State: AOJu0YyUklNbXmpbqCxjTpfN9frdq8+868G5sk13hWRP0GnQDuQxQWX8
	EGb+1pLeY+l6MkUeGrqCK2J11J3DoSuUf2YyZEc8Qv3POpnbNgQuGJk/mSL4ZeE=
X-Google-Smtp-Source: AGHT+IGSdf47mhGPKThKgbTFV1mPcxsf604XBgdZnCwLz2R1UD1eKa7Cf0tMOicsX/65OAoMiYPc6w==
X-Received: by 2002:a05:622a:4083:b0:447:d7d8:1150 with SMTP id d75a77b69052e-453126aec1fmr40952491cf.41.1723288670153;
        Sat, 10 Aug 2024 04:17:50 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1890:b0:447:f1f3:5341 with SMTP id
 d75a77b69052e-451d12d62d6ls39424621cf.1.-pod-prod-03-us; Sat, 10 Aug 2024
 04:17:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVcCn3Ve1uzTm6e5MQ8fsnzDngW60aplOfEEkvJhmf1KJjjVBlw4HraQSQCl7DG1DnBwKzxP4Tiei9s5IgS4cu1nNBJi++6avXqG/nW
X-Received: by 2002:a05:620a:190e:b0:7a3:51ed:38c0 with SMTP id af79cd13be357-7a4c16a5333mr544239585a.0.1723288669155;
        Sat, 10 Aug 2024 04:17:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723288669; cv=none;
        d=google.com; s=arc-20160816;
        b=cju1ZdvaNOP8OqeLCa5NhRydWbO39drIIZshuglsSwvSp4yodK6LheGMTlbeLckvJC
         CMentuwi8cMTOu24bl9c67Gtf8OF9hofhMioFoEusJGsah+dCgVSiRizRperE0+9m8mL
         mLx+nfIlvl4N/wi+XA79l8VYbMUVbyE/chH3R/iCEsdMTTTRp8yRJd9B5Sxh1fyEpoNR
         9Oy/UzfeH5TfxYsQWxV72dbWL2FGZYGXUJkEMzItEyvutDfx3EFvatT6RJYN62ddpA4+
         1BkNfZ3R4NiRv/P4SNTcDAPcSUfxXUROym4QOu5P6b1/2Tdibqpp0yqNvMniKYRUdVW5
         +IaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dmarc-filter:delivered-to;
        bh=EJu+tNht66IYJQx22kPWZzvgpTj+XL12AXKvM/5hnnA=;
        fh=bRJIJiiFxQnY8MlMBJhwI5y1HLIMC4aRqw76nsBVVOU=;
        b=C1lkTe+WRAf1wJl9tZ9MVSe81M++LYUyQlBSgnQaLQWv8IQ+Dv9+H2ZecApErdm03e
         s100Vz9r02Spi7dsQ0Z0l+a1YhWN3P0In3Pfp7hIQyCwsJ/WiWMY8rqeScCS7zOlhdCa
         /RbwFrnRF93uy4UFedvCD/w+9ALzOIV8XUVljjKeRgQ+kRWGRLU6bbvPmtdoTr11R6vG
         qyq9L1oJePizxmVvMHN4WCgTI6SQvuuiRMhwsERkckUzS2hox7tLD2hhc3TxYUajgMzL
         0DaWbOlWqgXhvdTfZcHHeQUUUn8IJaBxf9vSqx9pPwLgn/EvGX83bJ6rPQZxABeh9HFx
         YPtA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4c7e24ea6si173712285a.767.2024.08.10.04.17.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Aug 2024 04:17:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) client-ip=66.228.34.147;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-602-JqkHvGe4OsOpFl3OUw7WsQ-1; Sat,
 10 Aug 2024 07:17:47 -0400
X-MC-Unique: JqkHvGe4OsOpFl3OUw7WsQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 28BD41954B0E
	for <blinux-list@gapps.redhat.com>; Sat, 10 Aug 2024 11:17:46 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 239B23001FC3; Sat, 10 Aug 2024 11:17:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1E5BF30001A4
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 11:17:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 936CF19560B1
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 11:17:45 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-423-Y-x-Wa2yMfGwDIFdYV3Q6Q-1; Sat,
 10 Aug 2024 07:17:42 -0400
X-MC-Unique: Y-x-Wa2yMfGwDIFdYV3Q6Q-1
Received: from rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id EF538FA054;
	Sat, 10 Aug 2024 07:10:42 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.2 mail.rednote.net EF538FA054
Received: (from janina@localhost)
	by rednote.net (8.18.1/8.16.1/Submit) id 47ABAgpl008844;
	Sat, 10 Aug 2024 07:10:42 -0400
Date: Sat, 10 Aug 2024 07:10:42 -0400
From: "'Janina Sajka' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: Al Sten-Clanton <albert.e.sten_clanton@verizon.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how to enable use of right-alt key
Message-ID: <ZrdKsvb_McKikW6Y@rednote.net>
References: <37ae7068-5dd0-4446-81d4-3aa55b69cd0d.ref@verizon.net>
 <37ae7068-5dd0-4446-81d4-3aa55b69cd0d@verizon.net>
MIME-Version: 1.0
In-Reply-To: <37ae7068-5dd0-4446-81d4-3aa55b69cd0d@verizon.net>
X-Operating-System: Linux opera.rednote.net 6.10.3-200.fc40.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: rednote.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: janina@rednote.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Original-From: Janina Sajka <janina@rednote.net>
Reply-To: Janina Sajka <janina@rednote.net>
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

Hi Al:

I do what you're asking for myself on every boot manually. I took a dump
of all 7K+ lines of a dumpkeys into a keymaps file, edited altgr to
match alt, and saved the result in my /root. When I boot and login root,
I simply do:
loadkeys keymaps

Now that's arguably the lazy way, and who knows what croft I'm acquiring
over time! :)

In any case, keymaps is your friend. I suspect localectl is the better
way to accomplish what we're after.

hth
Janina


'Al Sten-Clanton' via blinux-list@redhat.com writes:
> Greetings!
>=20
>=20
> A long time ago, I found and used a command that enabled me to use the
> right-alt key in the same way that I could use the left-alt key.=C2=A0 I =
did this
> especially for making Emacs easier to use, but I recall that the command
> itself was by way of the Bash shell.
>=20
>=20
> Recently, I've look for the way to do this but have not found it.=C2=A0 I=
've so
> far done no better searching Emacs information.=C2=A0 Can anybody tell me=
 or
> point me to how I'd do this?=C2=A0 The main benefit for me would be in us=
ing
> Emacs, but being able to use both alt keys at the command line would also
> help some.
>=20
>=20
> Thanks for any information.
>=20
>=20
> Al Sten-Clanton
>=20
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.

--=20

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

