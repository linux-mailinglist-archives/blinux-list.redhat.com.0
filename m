Return-Path: <blinux-list+bncBCCIDSOV5UGBB4OIRWYQMGQED3XRD5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1C78ABA05
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 08:45:07 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4348786d28bsf30488811cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 19 Apr 2024 23:45:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713595506; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2QUK0OlCVp+npLleQ9sTFEy1xvWsM0WGFcMR1Zb9h64D8cOBfI2nBBWQz5no5OvOZ
         mfJMDLuEya5KXWTteiVTX5KN09jEW1iWxPR7Sg8ZQw2iacbG3cArH0UmLdgvsaRO1oOP
         grU1g1/Zh03KREWn4OWfDTmsEBCKbA7JPf2NFwFteal9jPEFT4qbdqeDDJnNRgIxThPC
         UWMqGVz2UzDR4E9qDJwpFiUcoN6pNMLxytZLf3hhVmmYEIru5lGAPKnDPyuM4HIW1HC5
         AMUXTO0aAbv08aZ4pkCrYm9k/uXWN6hcKWu9BZ430ITkx09KGdtU4RjvrKTIA5VXhtzL
         v9vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=uuiUublFdwP3M9RFluXsE1SWW02owH99H5T+5wRqgcI=;
        fh=Cj5Nf3J8SoQVAJBPdk83wznBdriCSyAn0FVFAEHDxtQ=;
        b=NR2F5wP89uKoHqNk4lPpPDPocj+oGRsari9MCkOMxnDxGbLdYqT9a1UIUxlyRcSkC6
         DXVhtg9RxACsEgSqHut1yI0G7BPyLKRErm8MSj6Xnam9jP9gcQzVUjYfaF08BYqqzNzc
         tc7E8SyRRgFT9CUEPnlPWw0nYA87qcyux8E/xHSVgKw7p/YVqnpJHDvlawWCbYZ+IeVk
         hRpvrnhp1nBdkyhikpn7rI6QES2u6zZR+DTvTN+e1iEqc4n9fTg/giTiLxXjQpDcV+SO
         MrVQnIYB7dRQp1SEWRqXcISvBHVgGBDHg5z67wiiBwJo2BvIhRaDJ9Chrel/iayS7iev
         IkxA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713595506; x=1714200306;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uuiUublFdwP3M9RFluXsE1SWW02owH99H5T+5wRqgcI=;
        b=Jac1mC0RkRSYa/gn9HgmulyCwGGAi4w623yd+OaRKBKElFX1nYhfZDLSkV6fpKcri2
         oHaCakiCRQsfjc2olJYiUU4PeCIZbwHRFwoyFMzeEDjLuYCGHgPn4AUcIcQ+v1Wl8E+/
         7vZYZc+ycVZMUkQVZKWh3jjg1JpNMc84+KdF3eoIvN5PkUweyj1t5AXIoddct3naVxia
         JURje1+5Uhh5/UQOafRWKIFRKg0alon2XFL+ueYetTXi96vRe+GilPG54F/yTS//VsSc
         TIifsKSOGcSlWZYt6BUGjkNCm9rfVZj1bucyRIEm2sRTS5tJVWs8JFHtAg0FjKpzZi+B
         fjaQ==
X-Forwarded-Encrypted: i=2; AJvYcCWP8qIB6rJvvtwSVO1kTxhVRykd1Hn4ufZQXWdlyzjQOHx4Et12alyjhlc1eKiVj80yPc3UaXl86HnQcCC6ECW4oSROl7fq1ETm
X-Gm-Message-State: AOJu0YyHz3zDRYEhHoaExmSy9W3xIeFlSY3ae3Mn0fnDxP3M+xoek7Xd
	nP5PXzcswafTqXLXT4VJ8Qw2Up3q1adcdCdQ/nUkeiqNUmD1DTWeAJVML8nrxYg=
X-Google-Smtp-Source: AGHT+IG+d2p7BXmICu9gxJFQYi31Ys1oX6XdKtwNUytEu5aGRb0raJIVIs10fMZq/xAryTdkI1ha1w==
X-Received: by 2002:a05:622a:5ce:b0:434:9135:4392 with SMTP id d14-20020a05622a05ce00b0043491354392mr5541786qtb.38.1713595506043;
        Fri, 19 Apr 2024 23:45:06 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:189c:b0:436:9fd5:9347 with SMTP id
 d75a77b69052e-437bbae215als20709111cf.1.-pod-prod-04-us; Fri, 19 Apr 2024
 23:45:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWvV3nKJ/CDOETctYHTHlGKTf3Tg/3CMv9l/xQKiRfAnTnAYIJA6fWMnGnWoej0lVW18d+TrsauJjQP5BcMFe8bTGRKtpxJd4VGUUOH
X-Received: by 2002:ac8:5a87:0:b0:437:885e:a012 with SMTP id c7-20020ac85a87000000b00437885ea012mr4671085qtc.10.1713595505404;
        Fri, 19 Apr 2024 23:45:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713595505; cv=none;
        d=google.com; s=arc-20160816;
        b=jgVbMJqQWG0k8akpxnQjiPqb1r3Dy348rYsi2T1R+6il/H7vhzReKts4HfBn2zbWmh
         ma63uBdgnfmnSfYWtQ1djdbsv3b07XmMMHlFgXOGc+hUYBi/RbDlVN5dNTNxSJ8MYgfP
         A37yPgBmT6o4+Xrk1r77Xh2szzLgkXYOe3fR33gTsZdYq7ImXU4PrEjEdNak3qmpyLIO
         EJd5S2CpL58Ib2zyWb/zJEBOw3Fbs6iBvLLLvC3mFYywTcFLm67t9Of0rG0LQfb6Tjdm
         qTUOieeaWzk+jCg6fy17kELIN+uKpMx62D3RyEODZ1EALCzqA4S8q4fBx77b13NhNtTQ
         HWag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=MuOAG0DpiaxDQfBnHzaakJQbdnhvT2/mvbBN7gPnTVw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=nMfcZ0FqywrX4MOU9Pjq6ofFMWUp9mV1UIzIe3egpnheOWFQVAMDFtoi5sjB5T/Ccg
         Nle6LWysRGKsgjluoUv5uMqt1Avv6OJeKBL6iKH3ra1Ni6K+8BPraldyNsOv6y3vxAt3
         D0qWDnY0nM1jQlTQKMN+FrLHYgjjzIvOxr+/TBzrrgyFzuim5bMkW54v9OOccrdrMm5l
         ypy96IktkLZGkGIHRkTC1rdPc0ua+4tXUI8ktKQIAFsNKm2XKnnkhKFPmC8o+wQbxurq
         Qid7bEUU6dVdzOUZ7samu4w/f3RXMXdXvI1WO2NnEzupW6hYJMjWmNHaJg6y7qfyGJVa
         JJ7w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id c5-20020ac87d85000000b0043784fa5b73si5502583qtd.373.2024.04.19.23.45.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 23:45:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-444-a6UWasPvPa2c7xpEAiyrug-1; Sat,
 20 Apr 2024 02:45:04 -0400
X-MC-Unique: a6UWasPvPa2c7xpEAiyrug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC68D1C0AF54
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 06:45:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B96A743FB1; Sat, 20 Apr 2024 06:45:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8130543FAD
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 06:45:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9991E1049CA1
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 06:45:02 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-691-OhDbjRa-NymrIRPB3jMLKA-1; Sat, 20 Apr 2024 02:45:00 -0400
X-MC-Unique: OhDbjRa-NymrIRPB3jMLKA-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id EFB241F4163
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 02:44:59 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id D96DC1F4162
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 02:44:59 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [76.88.164.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 392FD1F4161
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 02:44:59 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1ry4T3-0001bh-1o
	for blinux-list@redhat.com;
	Fri, 19 Apr 2024 20:44:57 -1000
Date: Fri, 19 Apr 2024 20:44:57 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: writing yaml visually impaired
Message-ID: <20240420064457.zp3umevzqdvdqzq4@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
MIME-Version: 1.0
In-Reply-To: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
X-Pobox-Relay-ID: 81B81684-FEE1-11EE-8F64-25B3960A682E-04347428!pb-smtp2.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Hi Elias,

It would be easy to create a script to generate YAML from
another format such as JSON or TOML.

Joel

'Elias St=C3=A5hlberg' wrote:
> hi
>=20
> Is there a solution for writing yaml for the visually impaired, e.g. dock=
er,
> ansible and cubernetes use this configuration language which is very
> specific about layouts, is there a converter that would convert the basic
> configuration to yaml, for the completely blind
> yaml's syntax is very difficult to internalize, is there a way to do this
> solution to the problem
>=20
>=20
> Elias
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>=20

--=20
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

