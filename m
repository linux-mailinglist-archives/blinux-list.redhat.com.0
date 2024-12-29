Return-Path: <blinux-list+bncBCM2V5WE3MDBBHGNYW5QMGQESUTZOYY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id B80489FDF92
	for <lists+blinux-list@lfdr.de>; Sun, 29 Dec 2024 16:11:26 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6f274f1f9sf1414836485a.3
        for <lists+blinux-list@lfdr.de>; Sun, 29 Dec 2024 07:11:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735485085; cv=pass;
        d=google.com; s=arc-20240605;
        b=h3RIiaTgXa3NSo8I7TQVH+Ldh+7MrYn+LjSm31g6em95W3GoDxVf3n9G7oV06T48RL
         LhXZNcprShfXe7xAKlArCwPDTnb/hewilHbGnbsWwBAwJrO/Mf9nMLO2Sh7Zti1E/wCt
         gnCRpnbEN0L+CZ9Ouzen1rZ07ZtxsG0T/SSGKzDoFulb/GtWMPjIy6I8wjCYFBwovE08
         MEoURvakFLJriS/foW0pKWZJ+p79HPymnpJe6Pvo9DHWFzdZ6wddXtFlIww1ygmBPmJ4
         Hyd2zsL6+dZ1esYLkof39MJcUqrTu0OctjEH2st6+VdwdsKuPlXjDT/v9lQ3kQiW4HFX
         BTHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :references:in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=UVsGkosobn8FTRugS2vgzMqTosNy2urRpouEuNk1YHU=;
        fh=cQXaNFAUOqLczL6LoO1a2ZTaTgLaPkEMCY2JvNw1qYk=;
        b=lAuK/kkRK1xFq9iNT3XPHVptSXSqtzpYrw1lfHr+K0arvgsLzq882Zpd5KBURNkF/d
         MVauryrpNl+b0r3PxudkvC1NEQjKAWbXHoAUoQw/6e3JBeScz990FMhc4YECFpwGKlc1
         6QmQ0pqqljv/KVrndDXc42t2j70eCghkq97cVdYEIeBw/RG6p2G8Nui99kffcnia3Vcv
         pa+EbsyAeEI0+3ipiaxy0QAjJGNrqcBDF+LMZ3yQfznfIrujeZh3XNMqRbEjEJ0LR350
         7wjJ+BvdRoUZUApopfKTikOittHZoP5ygQPb/M+yZIhp84p98i7Gd5nNBvdE0KXSXjtu
         vSag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735485085; x=1736089885;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:references:in-reply-to:message-id:subject:from:to:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVsGkosobn8FTRugS2vgzMqTosNy2urRpouEuNk1YHU=;
        b=uFFkx/7fYkQqK2abmNLRKrLjRRvL1hduDmMkb3Ua5gVcFqCTtbdNBxNIGSFPcQL/GX
         Uo8ZyLZtTYJEjiwSPnzmEZn8q7FugeyjJGo9Lc0VJhEUiqeRLruOqtCpyE/IZw8yC+uV
         Z4LcPq8XyTpgz+QgXyw4PmBXSi7/bF1vRdIfrQeVG+vfWwISFZxTusKqdZ4er/bf8I/e
         BOxoKeOh8Rdq9MHHxZiM21IgZcEDmWaYijOE3oK/Y87Cy7kNLVYMDchO7WSFUwFIEaEX
         o5e12iECe07ztxDnngScKy0zZia567Pe/WPLmrHJvgsvVqLY/X20ZOxbHXPhS62rH6z8
         jh9w==
X-Forwarded-Encrypted: i=2; AJvYcCXelAqQZK5R2fWnletmRdO4o/3Ed2vaXu3OyOURmT9abMqdGXTCWOMiagQVbsWojmFn8vFw0w==@lfdr.de
X-Gm-Message-State: AOJu0YzPWD8zMRTjnnjr2LB0OFrKgHulgfEUyhbabXUfEYxU5/QO3LHX
	ptzgAodp+O3lQzA3wQNvDdR53UsXXK7mHi16Q8F0LI1rfWdRD6L2aiKpt1/dN2Y=
X-Google-Smtp-Source: AGHT+IFzKe7qfJh9lPhvlfT7hTB1xK77HpCippFee8UKEZlGa947JzvJwrbokziJ1hDBAdLVt/LilQ==
X-Received: by 2002:a05:6214:21e9:b0:6d8:a1fe:7293 with SMTP id 6a1803df08f44-6dd233ac3afmr428438156d6.42.1735485085122;
        Sun, 29 Dec 2024 07:11:25 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:188f:b0:6d8:87d5:f97d with SMTP id
 6a1803df08f44-6dd1548d6c9ls69121506d6.2.-pod-prod-07-us; Sun, 29 Dec 2024
 07:11:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWz7dnVBEK5QG14ivKGNVfvyGJz4hnhlgpohgkywiaS+vGjuBr+B7uBBJ1xDQAXnCy+5hvTk7voCtDF/A==@gapps.redhat.com
X-Received: by 2002:a05:6102:568d:b0:4b2:4877:2de4 with SMTP id ada2fe7eead31-4b2cc38831dmr26614980137.15.1735485083783;
        Sun, 29 Dec 2024 07:11:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735485083; cv=none;
        d=google.com; s=arc-20240605;
        b=EIrHCaesYrll9VndCcKRDG5klEnpNQN8YzwGfo7HpFswZ1FFODv1gq9p7VqGG3td7h
         FI1RWqqREPSGKRzH5TmDHQwGhVbF2h9A6kJiWHqRchINHLw/mLzwEYXmcW9HxYYKi+5B
         8almY/KK+PzL+hzf6GJ5KExUOqWyLMkb9ECou0WfHrVHv0gZ/LBFSZqzRP7hH4a3Sk8n
         4Gwt7+ek1wR+DBw6EPRaG8+LvmmnTbsSdYppsKpMbjI418DrtlUFyzGwD5Lz2LsxVNc4
         Xw1PZA0Ju+EvlLv/kKyafmFuCijGkiWKbeMW4Oo/gVgE0WzHzxEwjuMygXrWpnfFQzu2
         aTgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=Zi505aAe7hYTCz2mWA4JSNt48q8KVfVN+uW07tYbOqY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=d2iPT+CTCHpRaeXkQo8getltoi7TDl9m0vSN7+kJ9x12rPJ0Msc77HMEPlnMNv9fYq
         rutWueu35+F0jkwehvaRe1wGD4ir92LmjUjBBwjsD7Zj/Wzlgd4lpob9S+hfiumw/YIe
         GNx7qo5w1wH+h89Z+F3TeI5EO2MPtvpO7fYUwszk7p7MpsYJQ4EAjNbzGt4ta2Jqx0Xg
         Qcjuu1wIl0nWs0BzNuaNoWZOVXUOTYAbQ4TMfYAOUYFQqHNvfsoFPrvd5SlIOBHU6dUR
         JEhMqntLlTchoOswE3rP+ynaR8ubvBubvyTcD3iuVRhSYwIstwfd0NecG1GKKow8WnVt
         VsCg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b2bfb78ddbsi5366988137.502.2024.12.29.07.11.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 07:11:23 -0800 (PST)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) client-ip=185.70.41.103;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-644-FyAXPHeOPmqCikMap-ATpA-1; Sun,
 29 Dec 2024 10:11:22 -0500
X-MC-Unique: FyAXPHeOPmqCikMap-ATpA-1
X-Mimecast-MFC-AGG-ID: FyAXPHeOPmqCikMap-ATpA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4A61D19560B1
	for <blinux-list@gapps.redhat.com>; Sun, 29 Dec 2024 15:11:21 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 44CE819560A3; Sun, 29 Dec 2024 15:11:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4204F19560A2
	for <blinux-list@redhat.com>; Sun, 29 Dec 2024 15:11:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A90EF1956086
	for <blinux-list@redhat.com>; Sun, 29 Dec 2024 15:11:20 +0000 (UTC)
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-537-1N02fI9NOBiajbyUFVu5Qg-1; Sun, 29 Dec 2024 10:11:17 -0500
X-MC-Unique: 1N02fI9NOBiajbyUFVu5Qg-1
X-Mimecast-MFC-AGG-ID: 1N02fI9NOBiajbyUFVu5Qg
Date: Sun, 29 Dec 2024 15:11:06 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Mate development
Message-ID: <69bf721f-932e-4528-8f60-60cef78da871@protonmail.com>
In-Reply-To: <6b06746d-5107-4cdd-8c96-bc5040a6e2b7@slint.fr>
References: <4f5b9ef8-5e7b-4440-86b9-bd3c8bf957f1@seznam.cz> <6b06746d-5107-4cdd-8c96-bc5040a6e2b7@slint.fr>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 2e82258f9f8a7d3c85e3b2eccec3c1ec202d33ee
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: EWzagz46OaOUuADFR6JQJ_WIaZRboFkG8Py3ZcXdM40_1735485076
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Rkz3ZpZidzOqBVjHxYerDc9qg0GDz9Pzw57vA93yz0k_1735485081
X-Mimecast-Originator: protonmail.com
Content-Type: multipart/alternative;
 boundary="b1=_fUNwHylwqJH7FCzVHj8Vvr3V4SC6fKfSRYDgY6e5NNs"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted
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

--b1=_fUNwHylwqJH7FCzVHj8Vvr3V4SC6fKfSRYDgY6e5NNs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Plus, Mate is a pretty much retrospective DE, so the lack of new features i=
s sort of a feature of its own. Currently the most important task of the pr=
oject is moving to Wayland. After this is done, I imagine the project will =
require just some minor maintenance to keep going, no major development. Th=
ere are other DEs for that purpose, primarily GNOME, KDE and Cosmic these d=
ays. :)

Best regards

Rastislav

D=C5=88a 28. 12. 2024 o 12:29 =E2=80=98Didier Spaier=E2=80=99 via blinux-li=
st@redhat.com nap=C3=ADsal(a):

> Hi Vojta,
>
> last update of components of the Mate desktop are dated:
> 03-Dec-2024 atril-1.28.1
> 27-Nov-2024 mate-applets-1.28.1
> 27-Nov-2024 mate-notification-daemon-1.28.3
> 17-Oct-2024 mate-panel-1.28.4
> as shown in
> https://pub.mate-desktop.org/releases/1.28/
> Further looking at these repositories:
> https://github.com/orgs/mate-desktop/repositories
> shows that there are recent commits.
>
> So as it is at least still maintained if not as actively developed as oth=
er
> desktops, my opinion is that nothing prevents continuing to use and also =
to
> provide Mate in distributions - and I will do so I a foreseeable future.
>
> Cheers,
> Didier
>
> On 28/12/2024 11:58, Vojtech =C5=A1miro wrote:
>
>> Hello,
>>
>> will be Mate desktop develop again? One my friend told me Mate hasn't up=
dates a
>> few months.
>>
>> Thanks a lot.
>>
>> Best regards
>>
>> Vojta.
>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email
>> to
>> blinux-list+unsubscribe@redhat.com
>> .
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to
> blinux-list+unsubscribe@redhat.com
> .

&#8203;

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1=_fUNwHylwqJH7FCzVHj8Vvr3V4SC6fKfSRYDgY6e5NNs
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
"/>
    <title></title>
    <meta charset=3D"UTF-8"/>
  </head>
  <body>
    <div class=3D"markdown-here-wrapper">
      <p style=3D"margin-block: 0px 19.2px; margin-bottom: 19.2px; margin-t=
op: 0px;">Plus,
        Mate is a pretty much retrospective DE, so the lack of new
        features is sort of a feature of its own. Currently the most
        important task of the project is moving to Wayland. After this
        is done, I imagine the project will require just some minor
        maintenance to keep going, no major development. There are other
        DEs for that purpose, primarily GNOME, KDE and Cosmic these
        days. :)</p>
      <p style=3D"margin-block: 0px 19.2px; margin-bottom: 19.2px; margin-t=
op: 0px;">Best
        regards</p>
      <p style=3D"margin-block: 0px 19.2px; margin-bottom: 19.2px; margin-t=
op: 0px;">Rastislav</p>
      <p style=3D"margin-block: 0px 19.2px; margin-bottom: 19.2px; margin-t=
op: 0px;">D=C5=88a
        28. 12. 2024 o 12:29 =E2=80=98Didier Spaier=E2=80=99 via <a href=3D=
"mailto:blinux-list@redhat.com" style=3D"border-block-color: rgb(11, 108, 2=
18); border-bottom-color: rgb(11, 108, 218); border-inline-color: rgb(11, 1=
08, 218); border-left-color: rgb(11, 108, 218); border-right-color: rgb(11,=
 108, 218); border-top-color: rgb(11, 108, 218); caret-color: rgb(11, 108, =
218); color: rgb(11, 108, 218); column-rule-color: rgb(11, 108, 218); outli=
ne-color: rgb(11, 108, 218); text-decoration-color: rgb(11, 108, 218); text=
-decoration-line: underline; text-emphasis-color: rgb(11, 108, 218);" class=
=3D"moz-txt-link-freetext">blinux-list@redhat.com</a>
        nap=C3=ADsal(a):</p>
      <blockquote type=3D"cite" style=3D"border-block-color: rgb(119, 119, =
119); border-bottom-color: rgb(119, 119, 119); border-inline-color: rgb(114=
, 159, 207) rgb(119, 119, 119); border-inline-start: 2px solid rgb(114, 159=
, 207); border-left: 2px solid rgb(114, 159, 207); border-right-color: rgb(=
119, 119, 119); border-top-color: rgb(119, 119, 119); caret-color: rgb(119,=
 119, 119); color: rgb(119, 119, 119); column-rule-color: rgb(119, 119, 119=
); margin-block: 8px; margin-bottom: 8px; margin-inline: 0px; margin-left: =
0px; margin-right: 0px; margin-top: 8px; outline-color: rgb(119, 119, 119);=
 padding-block: 3.2px; padding-bottom: 3.2px; padding-inline: 8px; padding-=
left: 8px; padding-right: 8px; padding-top: 3.2px; quotes: none; text-decor=
ation-color: rgb(119, 119, 119); text-emphasis-color: rgb(119, 119, 119);">
        <div class=3D"external-content" id=3D"extcontent-0" style=3D"border=
-block-color: rgb(119, 119, 119); border-bottom-color: rgb(119, 119, 119); =
border-inline-color: rgb(119, 119, 119); border-left-color: rgb(119, 119, 1=
19); border-right-color: rgb(119, 119, 119); border-top-color: rgb(119, 119=
, 119); caret-color: rgb(119, 119, 119); color: rgb(119, 119, 119); column-=
rule-color: rgb(119, 119, 119); outline-color: rgb(119, 119, 119); quotes: =
none; text-decoration-color: rgb(119, 119, 119); text-emphasis-color: rgb(1=
19, 119, 119);">
          <pre class=3D"moz-quote-pre" wrap=3D"">Hi Vojta,

last update of components of the Mate desktop are dated:
03-Dec-2024 atril-1.28.1
27-Nov-2024 mate-applets-1.28.1
27-Nov-2024 mate-notification-daemon-1.28.3
17-Oct-2024 mate-panel-1.28.4
as shown in <a class=3D"moz-txt-link-freetext" href=3D"https://pub.mate-des=
ktop.org/releases/1.28/">https://pub.mate-desktop.org/releases/1.28/</a>

Further looking at these repositories:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/orgs/mate-des=
ktop/repositories">https://github.com/orgs/mate-desktop/repositories</a>
shows that there are recent commits.

So as it is at least still maintained if not as actively developed as other
desktops, my opinion is that nothing prevents continuing to use and also to
provide Mate in distributions - and I will do so I a foreseeable future.

Cheers,
Didier


On 28/12/2024 11:58, Vojtech =C5=A1miro wrote:
</pre>
          <blockquote type=3D"cite">
            <pre class=3D"moz-quote-pre" wrap=3D"">Hello,

will be Mate desktop develop again? One my friend told me Mate hasn&#39;t u=
pdates a
few months.

Thanks a lot.

Best regards

Vojta.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail
to <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:blinux-list+unsubsc=
ribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.

</pre>
          </blockquote>
          <pre class=3D"moz-quote-pre" wrap=3D"">To unsubscribe from this g=
roup and stop receiving emails from it, send an email to <a class=3D"moz-tx=
t-link-abbreviated" href=3D"mailto:blinux-list+unsubscribe@redhat.com">blin=
ux-list+unsubscribe@redhat.com</a>.

</pre>
        </div>
      </blockquote>
      <div title=3D"MDH:PHA+UGx1cywgTWF0ZSBpcyBhIHByZXR0eSBtdWNoIHJldHJvc3B=
lY3RpdmUgREUsIHNvIHRoZSBsYWNrIG9mIG5ldyBmZWF0dXJlcyBpcyBzb3J0IG9mIGEgZmVhdH=
VyZSBvZiBpdHMgb3duLiBDdXJyZW50bHkgdGhlIG1vc3QgaW1wb3J0YW50IHRhc2sgb2YgdGhlI=
HByb2plY3QgaXMgbW92aW5nIHRvIFdheWxhbmQuIEFmdGVyIHRoaXMgaXMgZG9uZSwgSSBpbWFn=
aW5lIHRoZSBwcm9qZWN0IHdpbGwgcmVxdWlyZSBqdXN0IHNvbWUgbWlub3IgbWFpbnRlbmFuY2U=
gdG8ga2VlcCBnb2luZywgbm8gbWFqb3IgZGV2ZWxvcG1lbnQuIFRoZXJlIGFyZSBvdGhlciBERX=
MgZm9yIHRoYXQgcHVycG9zZSwgcHJpbWFyaWx5IEdOT01FLCBLREUgYW5kIENvc21pYyB0aGVzZ=
SBkYXlzLiA6KTwvcD48cD5CZXN0IHJlZ2FyZHM8L3A+PHA+UmFzdGlzbGF2PGJyPjwvcD48ZGl2=
IGNsYXNzPSJtb3otY2l0ZS1wcmVmaXgiPkTFiGEgMjguIDEyLiAyMDI0IG8gMTI6MjkgJ0RpZGl=
lciBTcGFpZXInIHZpYSBibGludXgtbGlzdEByZWRoYXQuY29tIG5hcMOtc2FsKGEpOjxicj48L2=
Rpdj48YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjaXRlPSJtaWQ6NmIwNjc0NmQtNTEwNy00Y2RkL=
ThjOTYtYmM1MDQwYTZlMmI3QHNsaW50LmZyIj48cHJlIHdyYXA9IiIgY2xhc3M9Im1vei1xdW90=
ZS1wcmUiPkhpIFZvanRhLAoKbGFzdCB1cGRhdGUgb2YgY29tcG9uZW50cyBvZiB0aGUgTWF0ZSB=
kZXNrdG9wIGFyZSBkYXRlZDoKMDMtRGVjLTIwMjQgYXRyaWwtMS4yOC4xCjI3LU5vdi0yMDI0IG=
1hdGUtYXBwbGV0cy0xLjI4LjEKMjctTm92LTIwMjQgbWF0ZS1ub3RpZmljYXRpb24tZGFlbW9uL=
TEuMjguMwoxNy1PY3QtMjAyNCBtYXRlLXBhbmVsLTEuMjguNAphcyBzaG93biBpbiBodHRwczov=
L3B1Yi5tYXRlLWRlc2t0b3Aub3JnL3JlbGVhc2VzLzEuMjgvCgpGdXJ0aGVyIGxvb2tpbmcgYXQ=
gdGhlc2UgcmVwb3NpdG9yaWVzOgpodHRwczovL2dpdGh1Yi5jb20vb3Jncy9tYXRlLWRlc2t0b3=
AvcmVwb3NpdG9yaWVzCnNob3dzIHRoYXQgdGhlcmUgYXJlIHJlY2VudCBjb21taXRzLgoKU28gY=
XMgaXQgaXMgYXQgbGVhc3Qgc3RpbGwgbWFpbnRhaW5lZCBpZiBub3QgYXMgYWN0aXZlbHkgZGV2=
ZWxvcGVkIGFzIG90aGVyCmRlc2t0b3BzLCBteSBvcGluaW9uIGlzIHRoYXQgbm90aGluZyBwcmV=
2ZW50cyBjb250aW51aW5nIHRvIHVzZSBhbmQgYWxzbyB0bwpwcm92aWRlIE1hdGUgaW4gZGlzdH=
JpYnV0aW9ucyAtIGFuZCBJIHdpbGwgZG8gc28gSSBhIGZvcmVzZWVhYmxlIGZ1dHVyZS4KCkNoZ=
WVycywKRGlkaWVyCgoKT24gMjgvMTIvMjAyNCAxMTo1OCwgVm9qdGVjaCDFoW1pcm8gd3JvdGU6=
CjwvcHJlPjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxwcmUgd3JhcD0iIiBjbGFzcz0ibW96LXF=
1b3RlLXByZSI+SGVsbG8sCgp3aWxsIGJlIE1hdGUgZGVza3RvcCBkZXZlbG9wIGFnYWluPyBPbm=
UgbXkgZnJpZW5kIHRvbGQgbWUgTWF0ZSBoYXNuJ3QgdXBkYXRlcyBhCmZldyBtb250aHMuCgpUa=
GFua3MgYSBsb3QuCgpCZXN0IHJlZ2FyZHMKClZvanRhLgoKVG8gdW5zdWJzY3JpYmUgZnJvbSB0=
aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWF=
pbAp0byBibGludXgtbGlzdCt1bnN1YnNjcmliZUByZWRoYXQuY29tLgoKPC9wcmU+PC9ibG9ja3=
F1b3RlPjxwcmUgd3JhcD0iIiBjbGFzcz0ibW96LXF1b3RlLXByZSI+ClRvIHVuc3Vic2NyaWJlI=
GZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQg=
YW4gZW1haWwgdG8gYmxpbnV4LWxpc3QrdW5zdWJzY3JpYmVAcmVkaGF0LmNvbS4KCjwvcHJlPjw=
vYmxvY2txdW90ZT48dWwgY2xhc3M9ImRyb3Bkb3duLW1lbnUgdGV4dGNvbXBsZXRlLWRyb3Bkb3=
duIiBzdHlsZT0iZGlzcGxheTogbm9uZTsgcG9zaXRpb246IGFic29sdXRlOyB6LWluZGV4OiAxM=
DAwOyIgY29udGVudGVkaXRhYmxlPSJmYWxzZSI+PC91bD4=3D" aria-hidden=3D"true" sty=
le=3D"font-size: 0px; padding: 0px; margin: 0px; block-size: 0px; height: 0=
px; inline-size: 0px; max-block-size: 0px; max-height: 0px; max-inline-size=
: 0px; max-width: 0px; overflow-block: hidden; overflow-inline: hidden; ove=
rflow: hidden; width: 0px;" class=3D"mdhr-raw">&amp;#8203;</div>
    </div>
 =20

</body></html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1=_fUNwHylwqJH7FCzVHj8Vvr3V4SC6fKfSRYDgY6e5NNs--

