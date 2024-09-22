Return-Path: <blinux-list+bncBCM2V5WE3MDBBFNJX23QMGQEET5UMHI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8B497E013
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 05:52:55 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4582776769asf79790821cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 21 Sep 2024 20:52:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726977174; cv=pass;
        d=google.com; s=arc-20240605;
        b=cBW5lMW+1LuEAyWpe6l4GZN/nOoaNbhOTqEeFwvSMANArj8mfHBW15fyGwG7R7Ek7e
         8u/5iZ2V8+9PE+pnaVmQ5BW1SbL0/sNXmq/OHFGzFngccfVkd0Dy7GUhwSOip3r+f5VQ
         sVY+mlqbr1xV2jIytjWU1l8nSTn6J2MXPtND0fqpLIatx4ny53f9jJG2CqZNvTqI3Zbi
         xX1gK8RrIZUK3tI72tvj/W+bhqWi+PD3lZ4qQlZtagKedovCYppayeIF+ysHdE9+pgLO
         2Wpf6O/Qj+5lDve06l10SD2+aIMCC3yql7xSpj7GFfOOHUn7n8I2zcCqxQU5WC6vfl2v
         l2FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=G54tocdEW6utlIq8Z13P7vSyMV8p38+xtw0ojjMtd5w=;
        fh=TxZm0gCbpBCKB7bRxRO8WY0dhLQ9UxymjrEwsWFigEE=;
        b=Cm9M4rX4BcrSw3HK9/chfGGLtVP8SIqZXgPE2v4fJx+8ur9edMovUgJuvMeZ/gTYFV
         6aQbXrSy7GxYnGR1o6KL6H1LJh7DuZ5o/r8iYrbTPTjjzxKGM4VfchhOtW/wXypellxE
         Yo1J06DnK4R3KBoh+WS9UhN8SbGpS/fBo/itJ5v/PXMDg8gzegF/pgkGRt0jAfBcUoRo
         YhobD0/td93lqgWFX+NFnmlHGLvHs5lKM/mWQmhlYpgX5qAxRvxb4I3FmJaJPLA//VXK
         ZRj/a5dRdXjIB5+tFBDNNZVFtI0AIP8iFHOMRrP9vrb8f9768O2L/i9c39A5jns/mYzK
         yb0g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726977174; x=1727581974;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G54tocdEW6utlIq8Z13P7vSyMV8p38+xtw0ojjMtd5w=;
        b=DW9AGPPIZrIBpiTQAH29bdKJUQuPh9X8yLbaLgfJI6jkDiD8mLaCspyt3oIMoLbCl6
         UBoJv3B+Hen6+bY0S9tHZ5Rw25cKCxpJ14qnfniXaC3JklX5WgE2x3+VBRrwG/mCsAWY
         azq8KrmIge83qC4kZiolkWUcGKgChVgdqerhonOCxe1fwFrvHVapjBOlzuTpFRQ2dXbS
         OQHpfL6kk1wvFr7IISRJIY8dmz1/n1xeQq+up7wcwVVcgwmBBgPLcFayC9CkPaCJzZOx
         jZm6JMM3yV77oS/pYhiW+fVkJuqCVP+Tu6+FiB2LfA5q/oZyYD3rYX92aOL38D0nFmli
         fC4w==
X-Forwarded-Encrypted: i=2; AJvYcCWNRBLxDHpRPhIbvJ8yCTyCYd0pOUrJGZ7tCcUsBNXRHf0nzNxivskAk1ndNwIJ3xLUubeL5A==@lfdr.de
X-Gm-Message-State: AOJu0YwLYOMYsDE7fYtzJkq/rukq98yaeKZbWn+wwaeHTqCfNWCFYmKW
	i2gIhR5N08KwMeLNUbpbMGJu4yuLCBLUHHE55VJ+HjbI/5/vGSykSo5RhSdebEs=
X-Google-Smtp-Source: AGHT+IGvhEHkoY6fAKowxy4in1cg4MJs/K9Hu4kn78pof/gvMty78FJzsgcSTOPJggIfTSFLH9y1+Q==
X-Received: by 2002:a05:622a:56:b0:45b:16b:6755 with SMTP id d75a77b69052e-45b1603b6efmr191204401cf.16.1726977173720;
        Sat, 21 Sep 2024 20:52:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:203:b0:440:38e6:c194 with SMTP id
 d75a77b69052e-45b166bd7a3ls23278461cf.2.-pod-prod-00-us; Sat, 21 Sep 2024
 20:52:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWwC2pIlHHiURhKjtl8S1G9fMx+GaCJZLo+E1NmTFlnzq5EL+4I9HjQ5IQnPsRMP0ebsFy1N3E3vFULNw==@gapps.redhat.com
X-Received: by 2002:a05:620a:2488:b0:7a9:b82e:723a with SMTP id af79cd13be357-7acb7df1d09mr1334544485a.31.1726977172875;
        Sat, 21 Sep 2024 20:52:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726977172; cv=none;
        d=google.com; s=arc-20240605;
        b=bNBaIokcipKmJxXZKhwrmRfIk3g8R9d4S5htdbIfs2ctraZ9vS0NPCon2P7kIFRsaY
         LoA4ZCWRucGRyoN2TXAm7zQo6hUgXla3OzhwEMQolCjJxr+jCkkhdtJqDO1xZCGJk+g4
         qGrsRPkZsSzQjF5pAEbPjJA8B8qAKEJUtcetPAfE8hqqZm/+c+uEMZsyqOEzw+LjHHiN
         cML45MrSdO4ft2YPTY6ZuKx9KFqxXv+5Dl6PzFDB2rDSGG2TAaAkudn4QpSNkW6lc9Ih
         YXZji7IThh1V6tzwqJqL2wS4MoHbCpF6E1K0hUVs+eX6EUnOg/8GMqCgIbcAQSN85Iy8
         TpFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=mlL/WFozd61+a0hiuimXnP7414rzKLriUF04xwtHhhU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=lXJGlpz74+ib5n6mUYYI3dGw7T1Lhc9Gl77vy9yz/TTzMZ65a1YS0ByB0LihMD8BMN
         dOOIh//z9AY0L6qCF1mMtaZzm6kM+/e6ON1z1pulnMZdwR+uDU/w89gDM8D//z0Z7B7N
         urEUgwfoYkfuYYCAI4/1pKdy2rvvRpq9oGvZVOHRRq6Xq20sZnieT4X3OUAuFSxDSHBG
         TOFktuLsgAoI1953sWoLmWUm5rOc8HK8UKaH5pL0K5fxDGfUC3VmNM0/6lCCM6WSEuqP
         gKSdHCrguejhE3ztUB4UKV6d3PdLvMxLoR0y0r8PuhcapD5xcLDIM8pEPRwWL4GQzPkj
         A9Wg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7acb0912a94si773227285a.760.2024.09.21.20.52.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Sep 2024 20:52:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted sender) client-ip=185.70.43.22;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-341-ZYEVfi_FN9-W03oi9rgHmQ-1; Sat,
 21 Sep 2024 23:52:50 -0400
X-MC-Unique: ZYEVfi_FN9-W03oi9rgHmQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2022518FDEFC
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 03:52:50 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1CBA03000235; Sun, 22 Sep 2024 03:52:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1A29130001A1
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 03:52:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3682D1934D43
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 03:52:49 +0000 (UTC)
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch
 [185.70.43.22]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-694-HldxBIqpNdm1jmM93J34cQ-1; Sat, 21 Sep 2024 23:52:47 -0400
X-MC-Unique: HldxBIqpNdm1jmM93J34cQ-1
Date: Sun, 22 Sep 2024 03:52:41 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: COSMIC Desktop System76 Accessibility Survey
Message-ID: <278c71ad-8c61-4bb9-8ab7-c0ebee03f8d2@protonmail.com>
In-Reply-To: <3ecd4b0f-644d-4485-8b4f-4c7ea9aa0418@protonmail.com>
References: <a143e0ae-12e9-4b02-9844-7dc38b5727d8.ref@yahoo.com.br> <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br> <3ecd4b0f-644d-4485-8b4f-4c7ea9aa0418@protonmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 771a194991b132ee5a8d7a7875a7c0f3bb4143bb
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted
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

I have just checked out the survey and it's actually about finding out=20
the technologies most needed by the a11y community. So I guess they're=20
collecting feedback to know what topics should they be focusing on. I=20
have filled it out, and will forward it to the Orca mailing list, so we=20
can be represented adequately.

Best regards

Rastislav

D=C5=88a 22. 9. 2024 o 5:06 'Rastislav Kish' via blinux-list@redhat.com=20
nap=C3=ADsal(a):
> Hello,
> Cosmic is an environment I'm actively keeping my eye on, since it seems
> to bear some truly interesting potential and I'm always happy to see
> accessibility is worked on in the design.
> I've noticed there is the alpha release. But is it actually prepared to
> run with screenreaders? I.E. Orca present on the installation media,
> shortcut for its activation working, etc? I thought this was a
> super-early preview version to see whether the DE is going to run for
> anyone else than the Cosmic team, and things like a11y are going to be
> investigated when the whole experience gets somewhat stable.
> So, can we run this right now? The fact they have a survey suggests so.
> Has anyone tried? I should setup a VM and check...
>
> Best regards
>
> Rastislav
>
> D=C5=88a 21. 9. 2024 o 4:46 'T=C3=A2nio' via blinux-list@redhat.com nap=
=C3=ADsal(a):
>> Hello!
>> As some of you may already know, System76 is working on their new Linux
>> graphical interface, the COSMIC desktop. They have created a form with
>> some questions related to accessibility. If anyone is interested in
>> participating in the survey, please access the address below:
>>
>> https://docs.google.com/forms/d/e/1FAIpQLSfQcq6638l0yNIQf6GFalMqwTVGFiZq=
YsaLt7TFGSCtktVDdg/viewform
>>
>> Best regards.
>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
>>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

