Return-Path: <blinux-list+bncBC53745Z5QKRB5NPSPAQMGQEKVAGHHY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 78477AB733C
	for <lists+blinux-list@lfdr.de>; Wed, 14 May 2025 19:50:48 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f2b50a75d8sf2139026d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 14 May 2025 10:50:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1747245047; cv=pass;
        d=google.com; s=arc-20240605;
        b=kpti6mkhCcYWPG+GGhTiT79EhpuaUU8lLpb+FEZQvqQnxWO70PEKuf8F6p4yTMQEEk
         n3XsqmvQXOwDWN/kZdY1mL7t7PpuZahQHmZ5oGlQsWylzkEuU6mXURco29mdboc/IrnZ
         YNHYJ1+FuhBpHdCuNLo4+rotJ2O5t+uZNNHoT0ThMjSMdSx6iW6wby8WIAfOdg9ZfCS7
         bQoEeVSBvD9hblhOVYAP4wcT+EcxPg7zIW9Ho337Ht2OBYDz6Zhuo2TCjpqicgyl+0n+
         EicqLKFUKvL2a7Am0j+XtFsUypPmhgKes6AAQNoV3zxmzONBbIClrzhCkaMJyr9k+zRS
         B63Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:date:to:references:message-id:subject
         :mime-version:from:delivered-to;
        bh=/ukrVbEhTcu6aWNC+e4fhpmvw7VBoYNbvhf+aYCg2qQ=;
        fh=HwR0qps6BF2XEURMtWbx257TAfMVkbj0ns/BlHlJeNI=;
        b=aZZaJJI84Ik0groygUtqdFqhy7lFjxdXO50RJRp2zK8LfICkFUXPfuKjNiPRc5x7o5
         BCpXAz7IlunahD4eg0akm7flurbE8T+HV2h2ptt9h6EAQlX1pmQ4Nj6oybrrvclADq/O
         SoeLTe8/cULOJ2gGyEOZgHMMZGKklE157hGEfEaFXbMJtqx9pt+csfTlzemaYeWEAH/V
         /ibZJJhjC6HlYs44jmfYHjsJhLibEELR9N8pOBzJYoDxNekuMFvURTZXah9YGjPq+ggB
         BmTjQS4LURmxVc+np5Svc7mBHllZVXwie4c4GAxGnf4VuZnGWBo0ddtlQ740I7mOpb+H
         EKAQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) smtp.mailfrom=anders@pipkrokodil.se
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747245047; x=1747849847;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:date:to
         :references:message-id:subject:mime-version:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ukrVbEhTcu6aWNC+e4fhpmvw7VBoYNbvhf+aYCg2qQ=;
        b=cbofgJ4ULoStXIB4/XWs7NCbYxbvLPqRcsfC5+cD6aqdg1V2XwJcwqc0qPdazukVlJ
         b879ZgGNA0B5w1M42IHtvVoS+2E7XTTzmsdQzsTrnDVGeeUk3aaBqjCqdKIZxPUd5e8H
         F1qhdXbnElIBhlyDHBBRnk5W6fd9Yt/4+a4u5I7+vP8d7/bel2n+4mrA4H1J54eLk3+8
         /fCvAdRd4Q4FG7owQWn5gUXO+uixJlG4LWNtacHUebtUyx82tVgKtohrSjivJsyjyOiW
         dMW6s4f94MCJWpOboeSGmhHIat9/rHXO+/AEQ8Ez3nl/tx8z640lVjD+M3f542d+L5r8
         7u9A==
X-Forwarded-Encrypted: i=2; AJvYcCVFURE2Csja5+VBF49QTKbaDrJ0HYjOgHRCbrkbMids7SvE2BTSorFNhVDhnYs3S5OfqAZ4cg==@lfdr.de
X-Gm-Message-State: AOJu0YwB/bxd2Z2u/AgmVgpv+9BIyu6ahTVBbSk3fnrHqlfN9/v0zKOo
	qna7oVIIg9w++H2dvfjuj8QkgRyoGHW2z4Z/JIn7P08JGA/Stb7yjb7Pu6Zq6jQ=
X-Google-Smtp-Source: AGHT+IGUteBFTPyGrYDkVg730VyQtfvPiMPwFKOnzUvgJNVxa1+Zie6vKr6EQTzpfsr7QzdwFXvk3Q==
X-Received: by 2002:ad4:5749:0:b0:6ea:d393:962f with SMTP id 6a1803df08f44-6f896e1079fmr72591956d6.16.1747245046469;
        Wed, 14 May 2025 10:50:46 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBHNS7+Q69yzfXnnil3ik4Kq1NSlJ5WZo34spoQDJZdfRw==
Received: by 2002:a0c:fa8c:0:b0:6f8:9a7d:23c with SMTP id 6a1803df08f44-6f8a375e324ls565826d6.2.-pod-prod-05-us;
 Wed, 14 May 2025 10:50:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXMy3TW8nYEdgC1QoKa9uWGk+vf83GMjRt1UAGSU0FmveqfWSW5MLY2jHClwfQbBCVymwVXVFN1vFPGWA==@gapps.redhat.com
X-Received: by 2002:a05:620a:258c:b0:7c5:5fa0:4617 with SMTP id af79cd13be357-7cd2884ce3cmr660096585a.40.1747245044950;
        Wed, 14 May 2025 10:50:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1747245044; cv=none;
        d=google.com; s=arc-20240605;
        b=S9h/m5xsuzdvPIPeYetsk50ijJVE6IecUeW1YkbGb4AlUCWZRtd7i4NRe2oAa/UMlX
         U55DWCgJx5VvS+OntUD5xC0bt6zBlg0Z3h4hjjUCiBukzldg58u8OKAg0k3Pt9Gfinby
         NiTb/ctJ6O1LFv22ypq0MHAXCVrVEzR9C7TMY6SZ4yHc194hLG8MoPgTrBmoGsMOy9Fc
         zDJDT0HH1W7YIgBfAje1EaaqkzghdYUI8JQKGz9G2CUvGFDCs6lSjkGSJXwa5SPlYUVC
         fRZ3QZJbC+/zA3FloVJkLdPb/JqA52iTPi18e20Tj0wLxNxg5fxVPKLjy/sqPvRR+yAK
         mftQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=date:to:references:message-id:subject:mime-version:from
         :delivered-to;
        bh=0KKb0fQxlBp1DL+HNhSQAXmZo7ygtvsxGkt1RQ7U0xk=;
        fh=LBjpU90bP2emkazE0Gc5OAoaiqgp8P8XIgkk948Hows=;
        b=Uu+NlXti8mX0wg1RmtO0XPv7gqKqZxUDXGGNZ7DSXvycut9+iJWhjfCXUQ2QqOOhpt
         /S3yDi8hV38gGbrLp0LwYSAinEhz5UR06s2YqZ2Q5/+LOruiW61D//BcQOLsb2+7pR3V
         dON69+sz3S1CCMdZG+3HPsxELjLBPKxbASUpiZult8C0EjdAu8CWo7kG0QYvvQU2OvVX
         uLVFSFbyuByzR3d+1PPEewlTLOOGIDlITNLUfMSRyOiBmBXlA6Nv1mvsCkEivFLi0hLJ
         fNz7MRSnEeAxTUuVKSyW/yiKH1tHm9JKySdSpuwk5B684BLdePx6q4p+WFK2AQBTRJNX
         5ZZA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) smtp.mailfrom=anders@pipkrokodil.se
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7cd00f51776si1395305185a.131.2025.05.14.10.50.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 10:50:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) client-ip=93.188.3.37;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-294-lZfhRox_MWKV1mSYtqtD-g-1; Wed,
 14 May 2025 13:50:43 -0400
X-MC-Unique: lZfhRox_MWKV1mSYtqtD-g-1
X-Mimecast-MFC-AGG-ID: lZfhRox_MWKV1mSYtqtD-g_1747245042
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 423CA1955DCE
	for <blinux-list@gapps.redhat.com>; Wed, 14 May 2025 17:50:42 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3D7E830001B0; Wed, 14 May 2025 17:50:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3A19C30001A1
	for <blinux-list@redhat.com>; Wed, 14 May 2025 17:50:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 835D618003FC
	for <blinux-list@redhat.com>; Wed, 14 May 2025 17:50:41 +0000 (UTC)
Received: from smtp.outgoing.loopia.se (smtp.outgoing.loopia.se
 [93.188.3.37]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-137-8opgZNHiNbqmQi_G79Bk_A-1; Wed, 14 May 2025 13:50:37 -0400
X-MC-Unique: 8opgZNHiNbqmQi_G79Bk_A-1
X-Mimecast-MFC-AGG-ID: 8opgZNHiNbqmQi_G79Bk_A_1747245036
Received: from s807.loopia.se (localhost [127.0.0.1])
	by s807.loopia.se (Postfix) with ESMTP id 61A4438A64F
	for <Blinux-list@redhat.com>; Wed, 14 May 2025 19:41:02 +0200 (CEST)
Received: from s979.loopia.se (unknown [172.22.191.5])
	by s807.loopia.se (Postfix) with ESMTP id 48BBB38B787
	for <Blinux-list@redhat.com>; Wed, 14 May 2025 19:41:02 +0200 (CEST)
Received: from s474.loopia.se (unknown [172.22.191.6])
	by s979.loopia.se (Postfix) with ESMTP id 4776110BC462
	for <Blinux-list@redhat.com>; Wed, 14 May 2025 19:41:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at amavis.loopia.se
X-Spam-Flag: NO
X-Spam-Score: -1.198
X-Spam-Level: 
X-Spam-Status: No, score=-1.198 tagged_above=-999 required=6.2
 tests=[ALL_TRUSTED=-1, DKIM_SIGNED=0.1, DKIM_VALID=-0.1, DKIM_VALID_AU=-0.1,
 DKIM_VALID_EF=-0.1, HTML_FONT_LOW_CONTRAST=0.001, HTML_MESSAGE=0.001]
 autolearn=disabled
Received: from s980.loopia.se ([172.22.191.6])
 by s474.loopia.se (s474.loopia.se [172.22.190.14]) (amavisd-new, port 10024)
 with LMTP id ZmWiq-QZHswx for <Blinux-list@redhat.com>;
 Wed, 14 May 2025 19:41:01 +0200 (CEST)
X-Loopia-Auth: user
X-Loopia-User: anders@pipkrokodil.se
X-Loopia-Originating-IP: 193.203.12.37
Received: from smtpclient.apple (unknown [193.203.12.37])
	(Authenticated sender: anders@pipkrokodil.se)
	by s980.loopia.se (Postfix) with ESMTPSA id 73DB12201660
	for <Blinux-list@redhat.com>; Wed, 14 May 2025 19:41:01 +0200 (CEST)
From: Anders Holmberg <anders@pipkrokodil.se>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: =?utf-8?Q?Fwd=3A_=5BTech-VI=5D_I_Want_to_Love_Linux=2E_It_Doesn?=
 =?utf-8?Q?=E2=80=99t_Love_Me_Back=3A_from_Fireborn=3A_Interlude_=E2=80=93?=
 =?utf-8?Q?_A_Thank_You=2C_Where_It=E2=80=99s_Due?=
Message-Id: <BA2EC323-A155-4E67-9BAC-3BE2CB37D46D@pipkrokodil.se>
References: <PH7P220MB166358FDEF7DB090EE7FC2DEEE91A@PH7P220MB1663.NAMP220.PROD.OUTLOOK.COM>
To: Linux for blind general discussion <Blinux-list@redhat.com>
Date: Wed, 14 May 2025 19:40:51 +0200
X-Mimecast-MFC-PROC-ID: Pievsm_GVztgI0W7ih2GDneXkPrImDGV2ltpm8CkoNU_1747245036
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AIWDQ1SOAE7oZlth5fM5jb64bkNIeUGlwfYOU3TRfHU_1747245042
X-Mimecast-Originator: pipkrokodil.se
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6C03D069-C021-4D80-AC48-91E9C1275BBB"
X-Original-Sender: anders@pipkrokodil.se
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) smtp.mailfrom=anders@pipkrokodil.se
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

--Apple-Mail=_6C03D069-C021-4D80-AC48-91E9C1275BBB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"



> Vidarebefordrat mejl:
>=20
> Fr=C3=A5n: "David Goldfield via groups.io" <david.goldfield=3Doutlook.com=
@groups.io>
> =C3=84mne: [Tech-VI] I Want to Love Linux. It Doesn=E2=80=99t Love Me Bac=
k: from Fireborn: Interlude =E2=80=93 A Thank You, Where It=E2=80=99s Due
> Datum: 14 maj 2025 02:40:44 CEST
> Till: tv <tech-vi@groups.io>
> Efters=C3=A4nt fr=C3=A5n: david.goldfield@outlook.com
> Svara till: tech-vi@groups.io
>=20
> fireborn - Monday, May 12, 2025 at 8:00=E2=80=AFPM
>=20
> I Want to Love Linux. It Doesn=E2=80=99t Love Me Back: Interlude =E2=80=
=93 A Thank You, Where It=E2=80=99s Due
>=20
>=20
> This blog series has been a lot of yelling.
> Rightfully so=E2=80=94because a lot of Linux is broken.
> But this post? This one's different.
>=20
> Because while the failures need to be called out, the people trying to fi=
x it deserve recognition.
> And a few teams=E2=80=94despite limited resources, upstream breakage, and=
 years of neglect=E2=80=94are actually doing the work.
>=20
> Debian: Quietly Keeping the Lights On
>=20
> First, let me say it again: thank you to the Debian accessibility team.
>=20
> They don't have the flashiest distro.
> They don't have the newest packages.
> Speakup doesn't speak at the console by default.
> And yes, the desktop stack can lag behind.
>=20
> But despite that?
>=20
> The installer is accessible=E2=80=94and has been for years.
> If you boot with s, you get speech.
> The login screen speaks.
> The desktop starts with Orca running.
> Braille displays are supported out of the box.
> That matters.
>=20
> It's consistent.
> It's reliable.
> It's one of the only distros where you can install blind and get to a wor=
king desktop with speech.
>=20
> That shouldn=E2=80=99t be rare. But it is.
> And Debian makes it possible.
>=20
> Are the packages old? Sure.
> But you can build newer ones.
> Install backports. Track testing. But that stable core? That working base=
line? That's Debian.
>=20
> Elementary OS: Asking the Right Questions
>=20
> A more recent and very welcome surprise: elementary OS.
>=20
> The team reached out.
> They=E2=80=99re asking about accessibility.
> They=E2=80=99re listening.
> They want to know what=E2=80=99s broken and what=E2=80=99s needed.
>=20
> They=E2=80=99re not just responding to a bug report.
> They=E2=80=99re starting a conversation.
>=20
> That=E2=80=99s huge.
>=20
> Because most projects don=E2=80=99t even do that.
> They wait until someone screams=E2=80=94or they don=E2=80=99t wait, becau=
se no one bothered to test at all.
>=20
> But elementary OS?
> They=E2=80=99re reaching out before that.
> That=E2=80=99s how you fix things.
>=20
> It=E2=80=99s not perfect yet.
> It=E2=80=99s not all working.
> But the fact that they=E2=80=99re even asking puts them miles ahead of mo=
st.
>=20
> Blazie Technologies: Getting Linux Into More Hands
>=20
> Another thank-you goes to Blazie Technologies, the makers of the BT Speak=
=E2=80=94a braille input, speech output device designed for blind users, ru=
nning Linux under the hood.
>=20
> Why does this matter?
>=20
> Because it=E2=80=99s putting Linux into the hands of more blind users.
> It=E2=80=99s expanding the user base.
> It=E2=80=99s growing the pool of people who can test, report, fix, and ad=
vocate.
>=20
> And it=E2=80=99s doing it in the right way.
>=20
> The system is configured accessibly out of the box=E2=80=94as you=E2=80=
=99d expect.
> And when things go wrong?
>=20
> There are key combos.
> There are simple commands from the traditional mode interface to reset an=
d recover speech, display, and session functionality.
> You don=E2=80=99t need a second machine.
> You don=E2=80=99t need a script from GitHub.
>=20
> You just fix it. Blind. From the machine itself.
>=20
> And if you can't? Support is only a call away.
>=20
> That=E2=80=99s what Linux should be.
>=20
> Disclosure
>=20
> I have voluntarily contributed code to Blazie Technologies and the BT Spe=
ak.
> They did not commission or request this blog series.
> They have not reviewed or approved any part of it.
>=20
> This is entirely my own work.
> And I=E2=80=99m grateful they=E2=80=99re building something that=E2=80=99=
s actually helping.
>=20
> The People Who Make It All Possible
>=20
> This entire series wouldn=E2=80=99t exist=E2=80=94because none of us woul=
d be using Linux blind=E2=80=94without the people behind the core accessibi=
lity infrastructure.
>=20
> So thank you to the maintainers and contributors of:
>=20
> Orca, the screen reader that makes graphical Linux usable
> AT-SPI, the accessibility bridge that keeps everything talking=20
> BRLTTY, the console braille access layer that=E2=80=99s been doing the ha=
rd work for decades
> These are massive, complicated, underfunded projects.
> They deal with breakage from toolkits, distros, libraries, and kernel upd=
ates.
> They patch around missing features, broken standards, and things that sho=
uld have worked but didn=E2=80=99t.
>=20
> They are building access where there was none.
> Sometimes with little help. Sometimes for free.
> Sometimes while being blamed for breakage that isn=E2=80=99t even theirs.
>=20
> Without them, there would be no blind Linux users.
>=20
> And we thank you.
>=20
> Progress Deserves to Be Seen
>=20
> None of this means everything=E2=80=99s great.
> We still need to scream.
> We still need to break things down and rebuild them better.
>=20
> But these teams?
> They deserve to be noticed.
>=20
> Because if more distros did what Debian does=E2=80=A6
> If more developers asked like elementary OS is asking=E2=80=A6
>=20
> This blog series wouldn=E2=80=99t need to exist.
>=20
> So for now?
>=20
> Thank you.
>=20
> You're making Linux just a little more livable.
> And we see you =E2=80=93 please keep seeing us.
>=20
>=20
> https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me=
-back-interlude-a-thank-you-where-its-due/
>=20
>=20
> =20
> =20
> David Goldfield,
> Blindness Assistive Technology Specialist
> =20
> If you need help using your assistive technology learn about my training =
services by visiting
> WWW.ScreenReaderTraining.com <http://www.screenreadertraining.com/>
> =20
> Am Yisrael Chai
> The Nation of Israel Lives!
> =20
> JAWS Certified, 2022 <https://www.freedomscientific.com/Training/Certific=
ation/>
> NVDA Certified Expert <https://certification.nvaccess.org/>
> =20
> Subscribe to the Tech-VI announcement list to receive news, events and in=
formation regarding the blindness assistive technology field.
> Email: tech-vi+subscribe@groups.io <mailto:tech-vi+subscribe@groups.io>
> www.DavidGoldfield.com <http://www.davidgoldfield.com/>
> =20
> =20
> =20
> =20
> _._,_._,_
> Groups.io Links:
> You receive all messages sent to this group.
>=20
> View/Reply Online (#9264) <https://groups.io/g/tech-vi/message/9264> | Re=
ply to Group <mailto:tech-vi@groups.io?subject=3DRe:%20%3D%3FUTF-8%3FB%3FW1=
RlY2gtVkldIEkgV2FudCB0byBMb3ZlIExpbnV4LiBJdCBEb2VzbuKAmXQgTG92ZSBNZSBCYWNrO=
iBmcm9tIEZpcmVib3JuOiBJbnRlcmx1ZGUg4oCTIEEgVGhhbmsgWW91LCBXaGVyZSBJdOKAmXMg=
RHVl%3F%3D> | Reply to Sender <mailto:david.goldfield@outlook.com?subject=
=3DPrivate:%20Re:%20%3D%3FUTF-8%3FB%3FW1RlY2gtVkldIEkgV2FudCB0byBMb3ZlIExpb=
nV4LiBJdCBEb2VzbuKAmXQgTG92ZSBNZSBCYWNrOiBmcm9tIEZpcmVib3JuOiBJbnRlcmx1ZGUg=
4oCTIEEgVGhhbmsgWW91LCBXaGVyZSBJdOKAmXMgRHVl%3F%3D> | Mute This Topic <http=
s://groups.io/mt/113101364/685>=20
> Your Subscription <https://groups.io/g/tech-vi/editsub/685> | Contact Gro=
up Owner <mailto:tech-vi+owner@groups.io> | Unsubscribe <https://groups.io/=
g/tech-vi/leave/11559870/685/1091978340/xyzzy> [anders@pipkrokodil.se]
>=20
> _._,_._,_

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--Apple-Mail=_6C03D069-C021-4D80-AC48-91E9C1275BBB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; -webkit-nbsp-mod=
e: space; line-break: after-white-space;"><br id=3D"lineBreakAtBeginningOfM=
essage"><div><br><blockquote type=3D"cite"><div>Vidarebefordrat mejl:</div>=
<br class=3D"Apple-interchange-newline"><div style=3D"margin-top: 0px; marg=
in-right: 0px; margin-bottom: 0px; margin-left: 0px;"><span style=3D"font-f=
amily: -webkit-system-font, Helvetica Neue, Helvetica, sans-serif; color:rg=
ba(0, 0, 0, 1.0);"><b>Fr=C3=A5n: </b></span><span style=3D"font-family: -we=
bkit-system-font, Helvetica Neue, Helvetica, sans-serif;">"David Goldfield =
via groups.io" &lt;david.goldfield=3Doutlook.com@groups.io&gt;<br></span></=
div><div style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; m=
argin-left: 0px;"><span style=3D"font-family: -webkit-system-font, Helvetic=
a Neue, Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0);"><b>=C3=84mne: </b=
></span><span style=3D"font-family: -webkit-system-font, Helvetica Neue, He=
lvetica, sans-serif;"><b>[Tech-VI] I Want to Love Linux. It Doesn=E2=80=99t=
 Love Me Back: from Fireborn: Interlude =E2=80=93 A Thank You, Where It=E2=
=80=99s Due</b><br></span></div><div style=3D"margin-top: 0px; margin-right=
: 0px; margin-bottom: 0px; margin-left: 0px;"><span style=3D"font-family: -=
webkit-system-font, Helvetica Neue, Helvetica, sans-serif; color:rgba(0, 0,=
 0, 1.0);"><b>Datum: </b></span><span style=3D"font-family: -webkit-system-=
font, Helvetica Neue, Helvetica, sans-serif;">14 maj 2025 02:40:44 CEST<br>=
</span></div><div style=3D"margin-top: 0px; margin-right: 0px; margin-botto=
m: 0px; margin-left: 0px;"><span style=3D"font-family: -webkit-system-font,=
 Helvetica Neue, Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0);"><b>Till:=
 </b></span><span style=3D"font-family: -webkit-system-font, Helvetica Neue=
, Helvetica, sans-serif;">tv &lt;tech-vi@groups.io&gt;<br></span></div><div=
 style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-le=
ft: 0px;"><span style=3D"font-family: -webkit-system-font, Helvetica Neue, =
Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0);"><b>Efters=C3=A4nt fr=C3=
=A5n: </b></span><span style=3D"font-family: -webkit-system-font, Helvetica=
 Neue, Helvetica, sans-serif;">david.goldfield@outlook.com<br></span></div>=
<div style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margi=
n-left: 0px;"><span style=3D"font-family: -webkit-system-font, Helvetica Ne=
ue, Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0);"><b>Svara till: </b></=
span><span style=3D"font-family: -webkit-system-font, Helvetica Neue, Helve=
tica, sans-serif;">tech-vi@groups.io<br></span></div><br><div>

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">

<div dir=3D"auto">
<div dir=3D"ltr"><p>fireborn - Monday, May 12, 2025 at 8:00=E2=80=AFPM</p>
<h1>I Want to Love Linux. It Doesn=E2=80=99t Love Me Back: Interlude =E2=80=
=93 A Thank You, Where It=E2=80=99s Due</h1><div><br class=3D"webkit-block-=
placeholder"></div><p>This blog series has been a lot of yelling.<br>
Rightfully so=E2=80=94because a lot of Linux is broken.<br>
But this post? This one's different.</p><p>Because while the failures need =
to be called out, the people trying to fix it deserve recognition.<br>
And a few teams=E2=80=94despite limited resources, upstream breakage, and y=
ears of neglect=E2=80=94are actually doing the work.</p>
<hr>
<h2 id=3D"debian-quietly-keeping-the-lights-on">Debian: Quietly Keeping the=
 Lights On</h2><p>First, let me say it again: <strong>thank you</strong> to=
 the Debian accessibility team.</p><p>They don't have the flashiest distro.=
<br>
They don't have the newest packages.<br>
Speakup doesn't speak at the console by default.<br>
And yes, the desktop stack can lag behind.</p><p>But despite that?</p>
<ul>
<li>The <strong>installer is accessible</strong>=E2=80=94and has been for y=
ears. </li><li>If you boot with <code>s</code>, you get speech. </li><li>Th=
e login screen speaks. </li><li>The desktop starts with Orca running. </li>=
<li>Braille displays are supported out of the box.</li></ul><p>That matters=
.</p><p>It's consistent.<br>
It's reliable.<br>
It's one of the <strong>only distros</strong> where you can install blind a=
nd get to a working desktop with speech.</p><p>That shouldn=E2=80=99t be ra=
re. But it is.<br>
And Debian makes it possible.</p><p>Are the packages old? Sure.<br>
But you can build newer ones.<br>
Install backports. Track testing. But that stable core? That working baseli=
ne? <strong>
That's Debian.</strong></p>
<hr>
<h2 id=3D"elementary-os-asking-the-right-questions">Elementary OS: Asking t=
he Right Questions</h2><p>A more recent and very welcome surprise: <strong>=
elementary OS</strong>.</p><p>The team reached out.<br>
They=E2=80=99re asking about accessibility.<br>
They=E2=80=99re listening.<br>
They want to know what=E2=80=99s broken and what=E2=80=99s needed.</p><p>Th=
ey=E2=80=99re not just responding to a bug report.<br>
They=E2=80=99re <strong>starting a conversation.</strong></p><p>That=E2=80=
=99s huge.</p><p>Because most projects don=E2=80=99t even do that.<br>
They wait until someone screams=E2=80=94or they don=E2=80=99t wait, because=
 no one bothered to test at all.</p><p>But elementary OS?<br>
They=E2=80=99re reaching out <strong>before</strong> that.<br>
That=E2=80=99s how you fix things.</p><p>It=E2=80=99s not perfect yet.<br>
It=E2=80=99s not all working.<br>
But the fact that they=E2=80=99re even asking puts them <strong>miles ahead=
</strong> of most.</p>
<hr>
<h2 id=3D"blazie-technologies-getting-linux-into-more-hands">Blazie Technol=
ogies: Getting Linux Into More Hands</h2><p>Another thank-you goes to <stro=
ng>Blazie Technologies</strong>, the makers of the
<strong>BT Speak</strong>=E2=80=94a braille input, speech output device des=
igned for blind users, running Linux under the hood.</p><p>Why does this ma=
tter?</p><p>Because it=E2=80=99s putting Linux into the hands of more blind=
 users.<br>
It=E2=80=99s expanding the user base.<br>
It=E2=80=99s growing the pool of people who <em>can</em> test, report, fix,=
 and advocate.</p><p>And it=E2=80=99s doing it in the right way.</p><p>The =
system is configured accessibly out of the box=E2=80=94as you=E2=80=99d exp=
ect.<br>
And when things go wrong?</p><p>There are key combos.<br>
There are simple commands from the traditional mode interface to reset and =
recover speech, display, and session functionality.<br>
You don=E2=80=99t need a second machine.<br>
You don=E2=80=99t need a script from GitHub.</p><p>You just fix it. Blind. =
From the machine itself.</p><p>And if you can't? Support is only a call awa=
y.</p><p>That=E2=80=99s what Linux should be.</p>
<hr>
<h3 id=3D"disclosure">Disclosure</h3><p>I have voluntarily contributed code=
 to Blazie Technologies and the BT Speak.<br>
They did not commission or request this blog series.<br>
They have not reviewed or approved any part of it.</p><p>This is entirely m=
y own work.<br>
And I=E2=80=99m grateful they=E2=80=99re building something that=E2=80=99s =
actually helping.</p>
<hr>
<h2 id=3D"the-people-who-make-it-all-possible">The People Who Make It All P=
ossible</h2><p>This entire series wouldn=E2=80=99t exist=E2=80=94because no=
ne of us would be using Linux blind=E2=80=94without the people behind the c=
ore accessibility infrastructure.</p><p>So thank you to the maintainers and=
 contributors of:</p>
<ul>
<li><strong>Orca</strong>, the screen reader that makes graphical Linux usa=
ble </li><li><strong>AT-SPI</strong>, the accessibility bridge that keeps e=
verything talking
</li><li><strong>BRLTTY</strong>, the console braille access layer that=E2=
=80=99s been doing the hard work for decades</li></ul><p>These are massive,=
 complicated, underfunded projects.<br>
They deal with breakage from toolkits, distros, libraries, and kernel updat=
es.<br>
They patch around missing features, broken standards, and things that <em>s=
hould have worked but didn=E2=80=99t</em>.</p><p>They are building access w=
here there was none.<br>
Sometimes with little help. Sometimes for free.<br>
Sometimes while being blamed for breakage that isn=E2=80=99t even theirs.</=
p><p>Without them, there would be <strong>no</strong> blind Linux users.</p=
><p>And we <strong>thank you</strong>.</p>
<hr>
<h2 id=3D"progress-deserves-to-be-seen">Progress Deserves to Be Seen</h2><p=
>None of this means everything=E2=80=99s great.<br>
We still need to scream.<br>
We still need to break things down and rebuild them better.</p><p>But these=
 teams?<br>
They deserve to be noticed.</p><p>Because if more distros did what Debian d=
oes=E2=80=A6<br>
If more developers asked like elementary OS is asking=E2=80=A6 </p><p>This =
blog series wouldn=E2=80=99t need to exist.</p><p>So for now?</p><p><strong=
>Thank you.</strong></p><p>You're making Linux just a little more livable.<=
br>
And we see you =E2=80=93 please keep seeing us.</p><div><br class=3D"webkit=
-block-placeholder"></div><p><a href=3D"https://fireborn.mataroa.blog/blog/=
i-want-to-love-linux-it-doesnt-love-me-back-interlude-a-thank-you-where-its=
-due/">https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-lo=
ve-me-back-interlude-a-thank-you-where-its-due/</a></p>
</div>
<br id=3D"lineBreakAtBeginningOfSignature">
<div dir=3D"ltr"><div style=3D"margin: 0in;"><o:p style=3D"background-color=
: rgba(255, 255, 255, 0);">&nbsp;</o:p></div><div style=3D"margin: 0in;"><o=
:p style=3D"background-color: rgba(255, 255, 255, 0);">&nbsp;</o:p></div><d=
iv style=3D"margin: 0in;"><span style=3D"background-color: rgba(255, 255, 2=
55, 0);">David Goldfield,<o:p></o:p></span></div><div style=3D"margin: 0in;=
"><span style=3D"background-color: rgba(255, 255, 255, 0);">Blindness Assis=
tive Technology Specialist<o:p></o:p></span></div><div style=3D"margin: 0in=
;"><o:p style=3D"background-color: rgba(255, 255, 255, 0);">&nbsp;</o:p></d=
iv><div style=3D"margin: 0in;"><span style=3D"background-color: rgba(255, 2=
55, 255, 0);">If you need help using your assistive technology learn about =
my training services by visiting<o:p></o:p></span></div><div style=3D"margi=
n: 0in;"><font><span style=3D"caret-color: rgb(0, 0, 0); background-color: =
rgba(255, 255, 255, 0);"><a href=3D"http://www.screenreadertraining.com/">W=
WW.ScreenReaderTraining.com</a><o:p></o:p></span></font></div><div style=3D=
"margin: 0in;"><o:p style=3D"background-color: rgba(255, 255, 255, 0);">&nb=
sp;</o:p></div><div style=3D"margin: 0in;"><span style=3D"background-color:=
 rgba(255, 255, 255, 0);">Am Yisrael Chai<o:p></o:p></span></div><div style=
=3D"margin: 0in;"><span style=3D"background-color: rgba(255, 255, 255, 0);"=
>The Nation of Israel Lives!<o:p></o:p></span></div><div style=3D"margin: 0=
in;"><o:p style=3D"background-color: rgba(255, 255, 255, 0);">&nbsp;</o:p><=
/div><div style=3D"margin: 0in;"><font><span style=3D"caret-color: rgb(0, 0=
, 0); background-color: rgba(255, 255, 255, 0);"><a href=3D"https://www.fre=
edomscientific.com/Training/Certification/">JAWS Certified, 2022</a><o:p></=
o:p></span></font></div><div style=3D"margin: 0in;"><font><span style=3D"ca=
ret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 255, 0);"><a href=
=3D"https://certification.nvaccess.org/">NVDA Certified Expert</a><o:p></o:=
p></span></font></div><div style=3D"margin: 0in;"><o:p style=3D"background-=
color: rgba(255, 255, 255, 0);">&nbsp;</o:p></div><div style=3D"margin: 0in=
;"><span style=3D"background-color: rgba(255, 255, 255, 0);">Subscribe to t=
he Tech-VI announcement list to receive news, events and information regard=
ing the blindness assistive technology field.<o:p></o:p></span></div><div s=
tyle=3D"margin: 0in;"><span style=3D"background-color: rgba(255, 255, 255, =
0);">Email:&nbsp;<a href=3D"mailto:tech-vi+subscribe@groups.io">tech-vi+sub=
scribe@groups.io</a><o:p></o:p></span></div><div style=3D"margin: 0in;"><fo=
nt><span style=3D"caret-color: rgb(0, 0, 0); background-color: rgba(255, 25=
5, 255, 0);"><a href=3D"http://www.davidgoldfield.com/">www.DavidGoldfield.=
com</a><o:p></o:p></span></font></div><div style=3D"margin: 0in;"><o:p styl=
e=3D"background-color: rgba(255, 255, 255, 0);">&nbsp;</o:p></div><div styl=
e=3D"margin: 0in;"><o:p style=3D"background-color: rgba(255, 255, 255, 0);"=
>&nbsp;</o:p></div><div style=3D"margin: 0in;"><o:p style=3D"background-col=
or: rgba(255, 255, 255, 0);">&nbsp;</o:p></div><div style=3D"margin: 0in;">=
<o:p style=3D"background-color: rgba(255, 255, 255, 0);">&nbsp;</o:p></div>
</div>
</div>



<div width=3D"1" style=3D"color:white;clear:both">_._,_._,_</div>

<hr>


Groups.io Links:<p>


 =20
    You receive all messages sent to this group.
 =20
 =20


</p><p>
<a target=3D"_blank" href=3D"https://groups.io/g/tech-vi/message/9264">View=
/Reply Online (#9264)</a> |


  <a target=3D"_blank" href=3D"mailto:tech-vi@groups.io?subject=3DRe:%20%3D=
%3FUTF-8%3FB%3FW1RlY2gtVkldIEkgV2FudCB0byBMb3ZlIExpbnV4LiBJdCBEb2VzbuKAmXQg=
TG92ZSBNZSBCYWNrOiBmcm9tIEZpcmVib3JuOiBJbnRlcmx1ZGUg4oCTIEEgVGhhbmsgWW91LCB=
XaGVyZSBJdOKAmXMgRHVl%3F%3D">Reply to Group</a>
 =20
    | <a target=3D"_blank" href=3D"mailto:david.goldfield@outlook.com?subje=
ct=3DPrivate:%20Re:%20%3D%3FUTF-8%3FB%3FW1RlY2gtVkldIEkgV2FudCB0byBMb3ZlIEx=
pbnV4LiBJdCBEb2VzbuKAmXQgTG92ZSBNZSBCYWNrOiBmcm9tIEZpcmVib3JuOiBJbnRlcmx1ZG=
Ug4oCTIEEgVGhhbmsgWW91LCBXaGVyZSBJdOKAmXMgRHVl%3F%3D">Reply to Sender</a>
 =20

|

  <a target=3D"_blank" href=3D"https://groups.io/mt/113101364/685">Mute Thi=
s Topic</a>


<br>




<a href=3D"https://groups.io/g/tech-vi/editsub/685">Your Subscription</a> |
<a href=3D"mailto:tech-vi+owner@groups.io">Contact Group Owner</a> |

<a href=3D"https://groups.io/g/tech-vi/leave/11559870/685/1091978340/xyzzy"=
>Unsubscribe</a>

 [anders@pipkrokodil.se]<br>
</p><div width=3D"1" style=3D"color:white;clear:both">_._,_._,_</div>

</div></blockquote></div><br></body></html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--Apple-Mail=_6C03D069-C021-4D80-AC48-91E9C1275BBB--

