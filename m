Return-Path: <blinux-list+bncBC4KRXEWRQERBAE4Q26AMGQEGZXKJ2Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A0765A09CE4
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 22:15:45 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46796f4d7c8sf36321331cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 13:15:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736543744; cv=pass;
        d=google.com; s=arc-20240605;
        b=AolWhOmYPc/G756fdgEoF6ksaG4B93GCnWa6Bd+vNI1XC5HtqFhFUtFWCpkYbiDfcU
         ByB7519xL5gE4F3BZwEaKqitV6ZKN2VdSclk50XKYEkX+zoQ9uvq8f3jM0XPVox8EOwm
         0enlNqIuVEa0p+U7aO9fkbfp5TG6UQpdcCAhUbhURrTv4I44AD8hAZdpSLlRDguCEzOi
         9WY1vGfdRSy5hbfpDmdlYH4Sw4qGFGR3yTRHTr5pMWOEjXQEjfaH29z7FMXsPWV8bQxP
         Vd7QMJdbLnR+kMVY0KpM3BlHF8+DEnWNVsJHzMe42PjgFRImhA1ZNDUPRmPRRwYewQLM
         n5zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-filter:delivered-to;
        bh=q67yHWRl0rNTxabrVOA39A1OPHrMlvIQvPnXs0/tXMI=;
        fh=x4uiJe2MisoLynlTM7Y4xVkr9i8hqfuv12XhP5AUrwU=;
        b=eMUCmSquYuM3t4aTKDHSwFv+lAnrNLQsXHLY46C6gTgP8f78Ew2tuA9P/Ekv2iCT+S
         UsR0iA/q82pSD8A+Fb2+mzdgl0P+dPK+PwJVm8w15Fnfmpn3x/pMohkMCPU6Y5cU/6+i
         mws14RxR+yyOSd0BR2bhNkyxxKFHSW8S86lubflGYv0P10PcAszZHP1DVF/7HdimhXgp
         YAFa/YbsUZUGyFX3Z9MRDWLL8NbgbNA/9G8Ga+qeWw9zNHswvda/RvrECLxUKLfe8+jN
         5LJY/oZ8L4RwUHJjnMmRw7E3s7DmBMjpDJWl25Gy5Ts8oHQisowf8ucEzA2jIaVZa6ya
         Aoqw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736543744; x=1737148544;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-filter:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q67yHWRl0rNTxabrVOA39A1OPHrMlvIQvPnXs0/tXMI=;
        b=uQtdu4LPblJOIY+6Ob0GzRT/rteoNjXSg1tnw09fEkM+FX1t0V84h5cqWlKGI84vZo
         9SCUXOeX6xpETrbOZ/cp2zpanRsFzXPtRNd/w8X9cNSWDhghemi2oXm+MW/wGuV0+aex
         x8UK1fpDj70Kg+wnz4pzzDAwyC2PxiRTozmdRlK1xoiEnM/FmoJXqJeUSmqcKahd638K
         3R81r8STw8USPGOBXRwcIP/7MENvnO8Nrjnr0ueRq1r3OZk5Cmn4Mocz0znzHiDevJGl
         gIdPYWbdDiCfEXaix1BifuyAm8poop93YkNVCZWSRB9ECYf7TU76IS8torblbxIRQyZo
         oR1g==
X-Forwarded-Encrypted: i=2; AJvYcCWbAGsSmKFBytjRRKsp/sVH/+CcAhQTYf6stMoo5SYz24SGim5ZAhXEwZvcA5QlUDILqLj1ew==@lfdr.de
X-Gm-Message-State: AOJu0YzymBp2LNc9NP9ZI0c1YIQVMuysyxYPAcYespO9weVV8D0vCgHD
	w0J2eok750byPm5nCh0aJamenlZRE9L6XXb0HTHbQwObQMvE0cJTNxJ3HlMNj7E=
X-Google-Smtp-Source: AGHT+IECK2WbNGO8vCVBsOGdhtu6Y2zoCHEJdfUFi7WrNfNWpmsAeesiv9rvZyeUm/eGgJPijYJI5w==
X-Received: by 2002:ac8:40ca:0:b0:46c:7142:f52b with SMTP id d75a77b69052e-46c7142f647mr154852951cf.14.1736543744344;
        Fri, 10 Jan 2025 13:15:44 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1b20:b0:466:98fc:1e40 with SMTP id
 d75a77b69052e-46c7ab5d334ls45118951cf.1.-pod-prod-03-us; Fri, 10 Jan 2025
 13:15:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW5YDp7nHt9+erx0HbAttjbbmwa62VyToJZxLqByQcXZpEiZgpM3oCNY6uh2f2Hz1Ts5wLwqLBZOsEpNQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:618c:b0:7b6:d959:59e with SMTP id af79cd13be357-7bcd9727b17mr1780995885a.3.1736543743363;
        Fri, 10 Jan 2025 13:15:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736543743; cv=none;
        d=google.com; s=arc-20240605;
        b=i6ojH9hCnRPZe7qsklKJSvP9rVMLP9hL/CYlnNI6SRwblctTqQ4wWvXc86/Cs81vjh
         fqrpc5zn2YUMXm0uKk0BJMeCyNBoHj3tv80Cawzn3VMnDoD+Wck4+S14rX1Q/39eU0LF
         CE+iv4065yWvO74LREypFghT/YHpe524qvzU5WtTyZWf93e6wXs9+sTLR+A2GCURvgKG
         FKhhRQFx7KyE0bTbJ0iM2ND3w4GI19r+3DGEoeSobxOOZH6i1u+r2m/OzxeSKTN5aghS
         3dGGFxMaOt1OiyCz4FVIkIEq3Vl8gq87fQvj2CYePb0Sg7zyRrYEAILZq4DO+HISP0+K
         rqRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-filter:delivered-to;
        bh=7PvmwEqd1xDV4fBrCyfZteEUUpkAwktteRv+IK6XVHM=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=DGLQ310/wsDO4zqP0TDiWmKiwFvTiAIqumc2nk7xdVqWEJnn+vqXlAZxK3J55Ap/ID
         2RqEiibg8W250ReNh9oiQrussHqWYnONF5UW/zK37m+KttlbUVnzgOSp4Kpz4ARZ6Ovk
         AeYLvZqthzBZV0y9vnyufKPaTtg34hWZh8XpfqZKXksqROCc1WY9dMtG+zMO8qYJw9qg
         uMkWU9VIcSBrsrBHc47uoWtUYp6KiuzxV1jgHJX0ETrJei8k7m9Ie3kJ6G9hVyNIyTF2
         wXG4Pe5uR+NbgkA2qYxPerqSFiK0wWKW//9nRqC9UFtlGjaZQsHKsL32k5VjaMFUePd0
         C7YA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7bce3229eafsi535919585a.102.2025.01.10.13.15.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 13:15:43 -0800 (PST)
Received-SPF: pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) client-ip=185.181.61.11;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-136-8kkhVkGOMkmGJDK7ZfdpSg-1; Fri,
 10 Jan 2025 16:15:41 -0500
X-MC-Unique: 8kkhVkGOMkmGJDK7ZfdpSg-1
X-Mimecast-MFC-AGG-ID: 8kkhVkGOMkmGJDK7ZfdpSg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0B1051956050
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 21:15:41 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 06899195E3E0; Fri, 10 Jan 2025 21:15:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 03D93195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 21:15:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 594521956083
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 21:15:40 +0000 (UTC)
Received: from dalen.lamasti.net (lamasti.net [185.181.61.11]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-454-qz5mpvb2Nw6d7ZBpc804WA-1; Fri,
 10 Jan 2025 16:15:37 -0500
X-MC-Unique: qz5mpvb2Nw6d7ZBpc804WA-1
X-Mimecast-MFC-AGG-ID: qz5mpvb2Nw6d7ZBpc804WA
Received: by dalen.lamasti.net (Postfix, from userid 500)
	id D11F614C203D; Fri, 10 Jan 2025 22:15:35 +0100 (CET)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.7 at dalen.lamasti.net
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net D11F614C203D
Date: Fri, 10 Jan 2025 22:15:35 +0100
From: Lars =?utf-8?B?QmrDuHJuZGFs?= <lars@lamasti.net>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
Message-ID: <Z4GN931SmznIV1dO@lamasti.net>
References: <m3a5bzvek5.fsf@dalen.lamasti.net>
 <Pine.LNX.4.64.2501091928400.1357245@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2501091928400.1357245@users.shellworld.net>
X-Mimecast-MFC-PROC-ID: cSqAOe2VoSoR9_XIyjGFyDD7UQCAXQr0fWOC9UmkMAs_1736543736
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6ZYYWkA5zyOVuQp-XSbiRFbKOHmWObh-qsTLZIbtMes_1736543741
X-Mimecast-Originator: lamasti.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lars@lamasti.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
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

Thank you. I'll try the list.

Lars

On Thu, Jan 09, 2025 at 07:32:18PM -0500, Karen Lewellen wrote:
> Hi Lars
> I actually have two suggestions.  Although one of them depends on if you =
are
> willing to make a call.
> Very very recently Google's disability support team created a phone numbe=
r.
> it is not toll free, like Apples, Northern California if memory serves.
> Given how Google tracks things, I would personally seek a truly human
> connection for the solution.
> My other suggestion is to join the Google accessibility list, and there a=
sk
> for a direct contact.
> Does that resonate?
> Hope it helps,
> Karen
>=20
>=20
>=20
> On Thu, 9 Jan 2025, Lars Bj=C3=B8rndal wrote:
>=20
> > I'm using Elinks regularly from a server located in a data center. Unti=
l
> > recently, with no problem. But now, they have blocked the access from m=
y
> > IP address due to the lack of javascript, and the posibility to prove
> > that I'm a human and not a robot. I've not found any email address or
> > contact form that let me contact Google to remove my IP address from
> > their block list.
> >=20
> > Do you have any suggestions for how to resolve this problem? Is it
> > possible to run orca remotely, so that I can run Firefox from the
> > server, just to access Google and prove that I'm a human, in hope that
> > this will remove the IP address? Do you have other tips?
> >=20
> > Thanks,
> >=20
> > Lars
> >=20
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to blinux-list+unsubscribe@redhat.com.
> >=20
> >=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

