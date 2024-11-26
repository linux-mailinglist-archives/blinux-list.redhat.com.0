Return-Path: <blinux-list+bncBCD3RKH4ZIBBBMFQSS5AMGQEARCSWBQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DFF9D8F92
	for <lists+blinux-list@lfdr.de>; Tue, 26 Nov 2024 01:37:06 +0100 (CET)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b66a5121efsf215809985a.0
        for <lists+blinux-list@lfdr.de>; Mon, 25 Nov 2024 16:37:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732581425; cv=pass;
        d=google.com; s=arc-20240605;
        b=DuWX2wwaxIR907QE0CLWaQdJyICBDP06Pd4TE+tq3y203KXdHb00mrrEqYQ6//gUw8
         PU9zAWhk8fTh+6i9j3k8gBoA24jsa1UQ1FY1IwBY06BlSlG0zycVThvvJkYevAtzUKGW
         c7UBNf+q9FC821Z25OQgv8C+8UTh2GFGYVknszuj/4V8W71JurqffgLmqeyIoZJFjKis
         UXbENV8LlyzKArOl1PgNbgFXnrKequFETwTNeIpEcKQUnfQ/ZWOlbiImRCmTJ+odphEp
         BJiiPHEdwFPBP0YNONT+7mDvei/rZw224cX5KDfY121T/lfE6iw343XYiX8fRLZbxf3x
         q+WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:delivered-to;
        bh=W5xlw4MDBV6o3saRXFi+xNDPg4P53vs6qi+jEJ5uMxM=;
        fh=j0dRTVY3xYsIT+yXJvfrx8RlpqrwA1L0F+zCgK9RGIg=;
        b=jgBLL+rQGzEfS5E3D4fegC/2fToXdKktRf90ul8Ma+jJuAy/0LsD1h2639ylhFrapW
         qWVvVrE9plvp/QlFXPB2LxUgVS7F5DM2mDzGdLKVlxldYjXf5pvzyxwijwshGoMcbYs5
         ql8UhJUrCN7QISHmuvcIz95hOyTd5Puv6PDSl9i459pyw/fNZ+lXDM0OclgDicXLTxNE
         8cqrja7vER/+CKU3skawnSxtUhT3ldKN7LqB7idhYDWYFR1pmeMP2TOaaYqLX390jWGC
         mDkJg6GqOM7VZYs6cCMUPeMIw8BClzajab7cUwUTx/352FL6r7eLwgDkxnL8rf9pIxv/
         zONg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732581425; x=1733186225;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W5xlw4MDBV6o3saRXFi+xNDPg4P53vs6qi+jEJ5uMxM=;
        b=S8/WG9OvacU2E2IdLdn92dsXU6B0zb92F7UjBhRpyP3XZCLTEfFUwLWCOEJVksrQfd
         /JluPwrW4hoRE+BbLUVhlRoPIRF0SLgIBYW9TADA9jgZI5CuRZOxxBB/xsP2CQ/vrk0S
         FQkFqIM28iNIHrSer+RSMqjZUmHAVOQTLiw/HsS2nKzBKTPKjixwZ+mg6zdgbv+Ygwnw
         JO6g8TlmDMYQS6p5PKFT6brJl0yBsoq0xcBpvVGHAZLJsvZEwhbZJ9/wt/7q3g5dk4k3
         u2LIHZjY03iQB4o3Td2rXMXz+jM5O+ugoXuiSu9Rhoo0PaPg9EtboPGWcFJYQSXbGXl4
         NtEQ==
X-Forwarded-Encrypted: i=2; AJvYcCUTNugW56ltAlWCCHlav6Cj8k8XI3Jq267ShiGmj2/ZARNFP+4p6yFOWB1nmgiGd2L+2GLmMw==@lfdr.de
X-Gm-Message-State: AOJu0YzZ5c1tvr622o5D1J/L2osUNzXYmQ+2kOJkKZVGz61CICFO7MPV
	hnwN7oXNTxNCeF6Wk8Xf1As2ym/Qg4Zg5fpv6Ilgv3WePH51eVNxWUqBl1poHnw=
X-Google-Smtp-Source: AGHT+IGpdJOZutLE0BqZ7P0CaP6wlUHD54PYZI6pou/SV1KW9AJI2Nl2sM8MSb9isDXQxXlg4fwqsg==
X-Received: by 2002:a05:620a:3720:b0:7b1:4f5c:6e86 with SMTP id af79cd13be357-7b51450c7f7mr2237336485a.17.1732581425040;
        Mon, 25 Nov 2024 16:37:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d45:0:b0:460:78da:7fa7 with SMTP id d75a77b69052e-4652f482943ls71156821cf.0.-pod-prod-03-us;
 Mon, 25 Nov 2024 16:37:04 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVxyd+JvoO8cu3klM9HBMOaEb3RN8OLHgf9vKvNU+vfJZcipRuoNrZOdTviq7QFSkCa/O03kVHS5grrPg==@gapps.redhat.com
X-Received: by 2002:a05:622a:52:b0:466:9c3c:acb5 with SMTP id d75a77b69052e-4669c3cc2bfmr45355191cf.28.1732581423900;
        Mon, 25 Nov 2024 16:37:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732581423; cv=none;
        d=google.com; s=arc-20240605;
        b=NNSlwRibl9LJ70S85/CgYnToI/ql0V8x1KMcuskgdxNVHr+cFI3WGwvMXMPxwG+lu2
         0admwKBP+0SwMsGTc1zoAasXC73SjS9Ob4CcH6fSZP3boW+zt8zC8EYGj5d8dIxOSQH5
         yGus07d/cVE1gPMmh8O6FYC28IZhDbKgHosfEqKgxiwQQ0zyvrBVM9YIifuTbGmNXurO
         S+vpr7vHqIEbaJ2xydx+iQzPrNoVAIKoExh+llmg2hjjSDlmVM4fOF4TUeimrvfugGyM
         L0o+W5Tf9NHoM2VTmaCJRzihxlPS/dCtdskcxvYPntFNPBcV4KsCwgRc6vOypXQb8acO
         1TGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:delivered-to;
        bh=iaxcSo0xHZHiJQIlePp0d9ZnQe2iuyGjT0lE2zlV8LE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=MJjrSh4+rKmI3u6MXeJmuFzdjOFH78fcFnamGu+dSKLRvTWDilwnSLi1VnpvLBrD9W
         Kt5sgNFD56/jE6uZC1yD21jTVfndnsqOWl5MWjkoO6kOToV6QJiiaTKLQDNdwXZqXNQ/
         +wQM9gmSj2cD0KydM69FTEo56WEUGYecrILxylHps1iyNrez7e19eXwLvW7EQI1T+zMt
         3jGnKVgVbeeo1HtNEk5I+lZ9GjEisyuj7d5eiYbdjSgeXlN9ZdEYm6iFMWIr3w6G5z6x
         tqLUyZgkvaPW15YEdiIq4VbFQe561w8xt1nmsH2lRwpO8I6t3srvIoLYm/8JPrAR6ZtH
         7neA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4666fe06980si92949181cf.341.2024.11.25.16.37.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 16:37:03 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.167.42 as permitted sender) client-ip=209.85.167.42;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-83-MwG04adFOPColBmOMCJzhQ-1; Mon,
 25 Nov 2024 19:37:02 -0500
X-MC-Unique: MwG04adFOPColBmOMCJzhQ-1
X-Mimecast-MFC-AGG-ID: MwG04adFOPColBmOMCJzhQ
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C6CCF1955F57
	for <blinux-list@gapps.redhat.com>; Tue, 26 Nov 2024 00:37:01 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C2B5D195E483; Tue, 26 Nov 2024 00:37:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BFF0C195DF81
	for <blinux-list@redhat.com>; Tue, 26 Nov 2024 00:37:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3516219560B8
	for <blinux-list@redhat.com>; Tue, 26 Nov 2024 00:37:01 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-308-a0tV4T9pMhqjhFq8RXAsFA-1; Mon, 25 Nov 2024 19:36:57 -0500
X-MC-Unique: a0tV4T9pMhqjhFq8RXAsFA-1
X-Mimecast-MFC-AGG-ID: a0tV4T9pMhqjhFq8RXAsFA
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53de8ecafeeso371397e87.1
        for <blinux-list@redhat.com>; Mon, 25 Nov 2024 16:36:56 -0800 (PST)
X-Gm-Gg: ASbGncs1ppoNfmpXNlayBuvNBN6ta3BD51y4iHkVOMfjSB392Ddt80hMk/EJiQUAYi7
	CMF2HMqTOP13VCgOMb5FmOXTen4lBP0A8UbFm2WsAoRSBt4c=
X-Received: by 2002:a05:6512:690:b0:53d:ec93:fbb7 with SMTP id
 2adb3069b0e04-53dec93fc97mr30577e87.9.1732581415401; Mon, 25 Nov 2024
 16:36:55 -0800 (PST)
MIME-Version: 1.0
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Tue, 26 Nov 2024 00:37:20 +0000
Message-ID: <CAO2sX335=vGsN2ie0GKShfs_gO+Zk1WDH8HNmQY8vpsQ5Rdwww@mail.gmail.com>
Subject: Troubleshooting audio.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: CnQ1-FkdeHdQzcHxiX30vYaAou9E5VKrAzf-FCutkNI_1732581416
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hjwpr5eonh2kzFP3VG_mMVyT5mYIW2UafP5jbAO33do_1732581421
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000cf45190627c60b24"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--000000000000cf45190627c60b24
Content-Type: text/plain; charset="UTF-8"

Okay, so I'm running Debian Testing and a few days ago, the audio from my
desktops front 3.5mm audiojack just died for apparently no reason.

Fortunately, I have a USB sound adapter that just worked when I plugged it
in, so I didn't have to resort to a clean install to get Orca and espeakup
speaking again, but while this works, it isn't ideal as:

-The adaptor is a rather bulky dongle, the kind that would block adjacent
USB ports if the ports on the front of my desktop weren't spaced out to
accomodate such things, the kind where one is fearful an accident is going
to lead to the dongle's connecter snapping off in the port.
-The adaptor is louder than my on-board audio(using alsamixer's master
volume, 30% from the adaptor is about 40% from the on board, 20% from the
adaptor is maybe 25% from the on-board. This wouldn't be a problem on its
own, but whereas the on-board, when it's working, lets me go down to 1% and
only mutes at 0%, the adaptor mutes if I go below 18% and the 1% from the
adaptor is louder than the 20% I often keep alsamixer at when usingthe
on-board audio. Not uncomfortably loud, but still louder than I would
prefer.

Plugging and unpluging my earphones from the adapter's earphone jack is
harder than doing so from the on-board jack... Plus, I frequently make the
mistake of plugging into the on-board instead of the adapter.

I suspect I could fix the issue by reinstalling Debian, but with how much
I've altered my setup from a default Debian Testing with Speech and LXDE
installation, and not knowing which, if any, of those alterations caused
the problem(though I'm not aware of any changes I made right before the
on-board cut out that would affect sound), I would rather fix it in my
existing system than do a clean install.

If it matters, best I can tell, selecting LXDE as desktop in Debian
Testing's netinst defaults to pulseaudio as sound system and the only
change I've made to pulse beyond keeping packages uptodate via aptitude was
running scripts provided by Fenrir that make Orca and espeakup play nice,
but that was weeks, if not months ago. And if It matters, I'm running AMD64
kernel version 6.11.9, though I was running 6.11.7 when the problem started.

Any help anyone can provide would be much appreciated.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000cf45190627c60b24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Okay, so I&#39;m running Debian Testing and a few day=
s ago, the audio from my desktops front 3.5mm audiojack just died for appar=
ently no reason.</div><div><br></div><div>Fortunately, I have a USB sound a=
dapter that just worked when I plugged it in, so I didn&#39;t have to resor=
t to a clean install to get Orca and espeakup speaking again, but while thi=
s works, it isn&#39;t ideal as:</div><div><br></div><div>-The adaptor is a =
rather bulky dongle, the kind that would block adjacent USB ports if the po=
rts on the front of my desktop weren&#39;t spaced out to accomodate such th=
ings, the kind where one is fearful an accident is going to lead to the don=
gle&#39;s connecter snapping off in the port.</div><div>-The adaptor is lou=
der than my on-board audio(using alsamixer&#39;s master volume, 30% from th=
e adaptor is about 40% from the on board, 20% from the adaptor is maybe 25%=
 from the on-board. This wouldn&#39;t be a problem on its own, but whereas =
the on-board, when it&#39;s working, lets me go down to 1% and only mutes a=
t 0%, the adaptor mutes if I go below 18% and the 1% from the adaptor is lo=
uder than the 20% I often keep alsamixer at when usingthe on-board audio. N=
ot uncomfortably loud, but still louder than I would prefer.</div><div><br>=
</div><div>Plugging and unpluging my earphones from the adapter&#39;s earph=
one jack is harder than doing so from the on-board jack... Plus, I frequent=
ly make the mistake of plugging into the on-board instead of the adapter.</=
div><div><br></div><div>I suspect I could fix the issue by reinstalling Deb=
ian, but with how much I&#39;ve altered my setup from a default Debian Test=
ing with Speech and LXDE installation, and not knowing which, if any, of th=
ose alterations caused the problem(though I&#39;m not aware of any changes =
I made right before the on-board cut out that would affect sound), I would =
rather fix it in my existing system than do a clean install.</div><div><br>=
</div><div>If it matters, best I can tell, selecting LXDE as desktop in Deb=
ian Testing&#39;s netinst defaults to pulseaudio as sound system and the on=
ly change I&#39;ve made to pulse beyond keeping packages uptodate via aptit=
ude was running scripts provided by Fenrir that make Orca and espeakup play=
 nice, but that was weeks, if not months ago. And if It matters, I&#39;m ru=
nning AMD64 kernel version 6.11.9, though I was running 6.11.7 when the pro=
blem started.</div><div><br></div><div>Any help anyone can provide would be=
 much appreciated.<br></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000cf45190627c60b24--

