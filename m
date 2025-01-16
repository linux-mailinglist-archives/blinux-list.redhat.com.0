Return-Path: <blinux-list+bncBDP7P6HU4IERB46MUG6AMGQEZTB757I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 5688BA130F0
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jan 2025 02:52:53 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679d6ef2f9sf11692901cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 15 Jan 2025 17:52:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736992372; cv=pass;
        d=google.com; s=arc-20240605;
        b=g8GgQF0v4kRwZpNe33lJNSfrHtMf8M2nsQLzBI1NtCgVIZtFa1FYe9VYVUNkX8jprX
         PBHwc6mDZLhN7CbbAk4ZWs9F7StzIOzKRUK6DPcxGChrTf+TDG6mFRC1Ddmuv/F2Aai9
         b/xpD/4wMrappNkPyf1Ecp+JE1R3lOZjvIcOTkp+YC5Is6d8Ucof/r5fCKoGNWb9xZFc
         bK5PplAvo4f1V4H4irIhUauKT6b7jlNZB2fEOUvtQa/yshHGfdY+9GQOANBZ1wYbttDl
         LDbQfwUuKTNg36KDN4R0gUyFIT5dykQWFxyO2S81Vy0XvSFGe1/FfNhTtZfDOd7+2hPm
         +tPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=iwSBMgx+iEcmCVSfiI1Q4tRToBKAsO0TOP4n06cTiWs=;
        fh=b2GLdiX0GhvC6P1FoWvcz0EM+O6nhFzt7sq42dmOrVc=;
        b=UWqsLsPkksmlIeDkkMce5edXzj8cPpcf9cy9FqXc8uXP0y/hGJv//v+N8thPJ680gD
         AtdR/dwOHC/M2IjI2tx39R2mqJZ+y1kv9LVhhLHr1dc9piZ9R8juzqKCXCiD56pxiPD+
         XQZZqgalt6Sgg9N9BPtWQ/+r1Qh0PquAMW8f0VfuYYGWIETaSFhdhb/EytuB1k65yjbh
         i6Hr25ske/KQ5MEe1WzVD50/fsVYn5oNLRpfct36zF9RfCtCytw2v3Ig2bxrePpfr8YE
         k93m9kOkCWT6mAluktbohswa0a7yZ4tpRMKMgFIM7Xcp7XHSwEpWARVg3MBss3CmJ1ab
         W8Xg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736992372; x=1737597172;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iwSBMgx+iEcmCVSfiI1Q4tRToBKAsO0TOP4n06cTiWs=;
        b=bAlJF0m2QnQ98sx13/JCg24KlO1QGa+bt31pLTrcMWq2wf1D/0jeDNmWlROBXtCRt6
         IqVxU3Eyz53Y/hMNO7N9gkoyRu+FApVgVyotp4ppR3KXGP6zg2B7+Amf3ht1kkM7qe22
         hwUtgM86OqH9TwrtWJ22PQ2fPQzEDoloyvIPKcugfAIwNJs1YshXOwbJ/kqBVce/2JKs
         megdK/MdEqfLfk4AmXm244Uv8arVxdACj4QP/yFZbQeZUZKXPNpICR4q7Te5AVW5QkmL
         eagFaYNIARG5NPwnmQCS4aGHEKJ4hmVP5zpvFjiVX7hInuSo/ITMy1Wc3yn7tZn+Dx5L
         v/nw==
X-Forwarded-Encrypted: i=2; AJvYcCXiN/QLsH6OFR4+bwh84g7iNx+rC+8fIsfaAuVBKH+lwhvzR6Fo0FEUOrnE7a5IB1tLLXHrxw==@lfdr.de
X-Gm-Message-State: AOJu0Yw3tTCWnI3QHnHdAQM30tykMm7LcjDE6p2CNorAdSWFAXpZiwwJ
	TpkDz2jAEq7XpqblJKlvpMvFA7Ld7Hkh/rqSMFkIUiSx2X3Ur4UP+GPEuu7R4LQ=
X-Google-Smtp-Source: AGHT+IHy3Vvaw8uO5jUgbLoBJFagZEWcgXH/UC9N0wvqn3VlOj9POYHRg6b66vgQAAEf4FLJmBd52Q==
X-Received: by 2002:ac8:7d4c:0:b0:460:f34c:12b6 with SMTP id d75a77b69052e-46c71081969mr382506841cf.44.1736992371969;
        Wed, 15 Jan 2025 17:52:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:40c8:0:b0:467:6771:ac55 with SMTP id d75a77b69052e-46e02e58b03ls1419881cf.1.-pod-prod-06-us;
 Wed, 15 Jan 2025 17:52:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUo2av54/1nTnjzU0ZJDIGvco7gcVHMkqqIqtTjIEnMBoOuf3Q553VVFnrD9Ep9Y53eztRfZp6spWjeSw==@gapps.redhat.com
X-Received: by 2002:a05:620a:472b:b0:7b1:52a9:ae1d with SMTP id af79cd13be357-7bcd9727283mr5495186585a.6.1736992370772;
        Wed, 15 Jan 2025 17:52:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736992370; cv=none;
        d=google.com; s=arc-20240605;
        b=XUnC4YMfM48HCdyVIt7JYtyms1vyY48BPNdmjy/v6lxPqDQNXP+urUL/ODwxMB6+cn
         eY3JdUFKCCwr4DvoT4VVTt+573SuTJmit65B9Mpxpo8Fo2m405Eru9DVf+qd7p5pDMP4
         YBOwXoM8pVXhtkNB8vZLy2h5cYoIpolJlyP/3ueSA60g9PanrfLQ2/B8Fwkd+yMyr+42
         RfmtgGOJe4EmhQ2rn+N2XutdO0HX5Ub/uZcQL5+cGqcDxnhBep/5eEzfbc5ZMPBKWjD3
         H2LUIijYxRTwEatc3iHfU+WBonTdKYwa3V5Ld9dNlWYDBaemYDalKAdtOZfqdVT+NfhX
         iXfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=OeqxRi55rqjMeLR4kMorIrheYyu2AIZdVTaQb0TsCBs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=F8ETP35u5cwiieGbXW4pB5tnNJbjcKnLlLDtQchCd6t13A7aYY6gmRj1ALEUCFnrV/
         qwgxWFBLabD5ROWaU1TUDtQ2y7LbjyctQAcXmyhC8mClShWvohnkFoC2sv4jt2ycTF6N
         cosMjThaMRuPfnHt33w55ePoUe/PiHd3jp5z2N0vHyB87lbYLMSxgWaIUTZRAoPdwcHC
         JIA3jyCAPsX5+4UAM1c11ZDzLG+EFiePjIZ14ksq/ML150hkxYAf+RoU0eN91F1Lfl5w
         yPahPelBHfhVQNeiFbNY3N9JG00nG3xb3Ghm70R5weEP60zdAHRIhkySJV1uI695/goX
         bUTg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7bce350801fsi1733921685a.511.2025.01.15.17.52.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 17:52:50 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) client-ip=65.20.63.74;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-335-xTL2GijRPB-9xdsEHHpx-w-1; Wed,
 15 Jan 2025 20:52:49 -0500
X-MC-Unique: xTL2GijRPB-9xdsEHHpx-w-1
X-Mimecast-MFC-AGG-ID: xTL2GijRPB-9xdsEHHpx-w
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B173419560B7
	for <blinux-list@gapps.redhat.com>; Thu, 16 Jan 2025 01:52:48 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A860A195E3D9; Thu, 16 Jan 2025 01:52:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A5A62195608A
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 01:52:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2132819560B2
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 01:52:48 +0000 (UTC)
Received: from altprdrgo05.altice.prod.cloud.openwave.ai
 (altprdrgo05.altice.prod.cloud.openwave.ai [65.20.63.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-KBn0azcgPm20qWBrwYMRHg-1; Wed,
 15 Jan 2025 20:52:45 -0500
X-MC-Unique: KBn0azcgPm20qWBrwYMRHg-1
X-Mimecast-MFC-AGG-ID: KBn0azcgPm20qWBrwYMRHg
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 677EAFB7014E5BB2
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudeitddgfeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdthe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo05.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 677EAFB7014E5BB2 for blinux-list@redhat.com; Wed, 15 Jan 2025 20:52:45 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tYF3n-0000zk-2J
	for blinux-list@redhat.com;
	Wed, 15 Jan 2025 19:52:39 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: speech-dispatcher Before I Do Something Stupid
In-reply-to: <CAO2sX30NOJL6Qt39R99h4G=pKpw7Wc+tbh7OJW4X0X8iMNWsXg@mail.gmail.com>
References: <E1tXPM7-000KS7-0c@wb5agz> <45995941-6847-4694-b01e-d67ee7418667@gmx.it> <E1tXuBT-0001H0-2A@wb5agz> <20250115080337.fjk25kiajtxwfbpr@sprite> <CAO2sX30NOJL6Qt39R99h4G=pKpw7Wc+tbh7OJW4X0X8iMNWsXg@mail.gmail.com>
Comments: In-reply-to Jeffery Mewtamer <mewtamer@gmail.com>
   message dated "Wed, 15 Jan 2025 17:25:03 +0000."
MIME-Version: 1.0
Date: Wed, 15 Jan 2025 19:52:39 -0600
Message-Id: <E1tYF3n-0000zk-2J@wb5agz>
X-Mimecast-MFC-PROC-ID: fbJXdV7w5gQOLe1pyX00DKNktwftEhFzBEWaQISJIbM_1736992365
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: J6jYhv3UP6Y5UseNZL-6E00PDqwvmPEakGg8P89hVLQ_1736992368
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <3826.1736992359.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

After doing more slogging through the swamp, I think what I need
is to get the fenrir 1.9.7.1 release which appears to be from May
of 2021.  After doing testing of both espeak and
speech-dispatcher, I find that both appear to be fine on my
system, the one with pipewire-pulse.  I also did see a reference
to the configure-pipewire script which is needed where we used to
just need configure_pulse.  I'm not sure yet if that will be in
the new download or not but the statement that this is really not
a fenrir issue makes sense because this just addresses a problem
with a new environment, basically getting the working application
to listen to the right source for the data.  I even tried the
female voices using spd-say and they sound odd but spd-say did
speak what I typed in, even in the command console so the speech
channel including speech-dispatcher is working properly.

	The only negative thing, assuming this works is that this
will be outside the ubuntu package system so won't upgrade
automatically but if it works, this inconvenience is minor.

	In my subject line, I mention not wanting to do something
stupid and what you describe in the quote is exactly what I am
trying to avoid, a mute system that needs to be rebuilt.  So
far, so good.

Martin

Jeffery Mewtamer <mewtamer@gmail.com> writes:
> Hey Joel, any tips on how to successfully ditch pulse? That it comes as
> part of a clean install with how I setup Debian itches against my
> minimalist tendencies, but as much as I want to tell Aptitude to purge t=
he
> pulseaudio metapackage, I'm afraid I'll end up with a mute system before
> Aptitude even finishes executing changes with no idea how to restore sou=
nd
> short of reinstalling Linux.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

