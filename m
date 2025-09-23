Return-Path: <blinux-list+bncBCM2V5WE3MDBBEHSZHDAMGQEQVP677Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F03B95753
	for <lists+blinux-list@lfdr.de>; Tue, 23 Sep 2025 12:40:19 +0200 (CEST)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f2a990c55sf1947112b3a.1
        for <lists+blinux-list@lfdr.de>; Tue, 23 Sep 2025 03:40:19 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1758624017; cv=pass;
        d=google.com; s=arc-20240605;
        b=TL7F7DZ4oUE3Cza24CW88oQhZfn/4/S5znWNgCNqpG7SK/ZwZDNZIlRMB6WLpycU1T
         mpV9C+UVeXmo1qI0YGoCQUTpVyJJxM2VXDZ3VsJGrYvKTsLj5uAtfWcVU7uFxmpEI2aT
         GJk+QJ5LbAFz6rte7KXVZNcSaexM6HgOUkitXDzDoeAVUupKkx6hoHQjXQRYzJwODewd
         OpvQv9Pa7K0CmE6c8OskjipUMMBypq6LFFaSGmsv++LpXX03ru985eAuTAE/srDIzcyo
         gCT8fWYZNdxMq0fRWcS8puYyIOUEYOaM62uahUX7Jdvkza36UYcXQmZxumIzod6e4L/N
         5PlA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=ClGX5cmr1se6SmQLIkqZu+eEeIVrx6S9xnUUSviQpAI=;
        fh=2wp+h0WRxLxnWZ8Q6byI3MPRKIJ9i0nTvDlBwig8gdk=;
        b=OtDQtyFGrH0DjHlcpdaHuc5MH/kUUFFE5SjInxXo2Llom7/M2LZKMxa+XXPREQ1l82
         6ZvsS40X/ThRtUu1pj3Ma155wB7vyuxGGH3nkklOOjGuJNwWSX7+igI5x2bSsHUkTD97
         iM6f8OmnR8MFqVdJ61KWJAMW+043i5c6C4y+xmJGH9tAtuXOCaUnI0itEJD7uGEBvpQB
         mKSa6Q5NkEuEQPj9gVEeESiylXnnjc3vYXH0Ex3es2BDUl6CI7JBlQ+YcW+0GRqsUgHd
         XGMHCKfTSaOaqos100T9pHEB2fM+21QMQh4Xdl5ZWxMklB3ySGkaGgn1OtpE6yX+upqh
         tnGA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=VzVoRVFo;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.18 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758624017; x=1759228817;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ClGX5cmr1se6SmQLIkqZu+eEeIVrx6S9xnUUSviQpAI=;
        b=St0oYdekbF6CFfkJnhDEaY+c3/rnCg98m3xxNqWB39xfyY7fuuGOdhZytBN78OdQau
         VE1uAZY7ppdGe93TzIRSZwurRP9RkGtRN5CbWrUPm09u/MnPYj5Gm4+8U/lFO/3RZeDs
         OtJegI4Nymc86ODPo6WSxVb7QkMQEuHFGarKmwSMei1AgGjCph2UVBx+sbRgHuPtLp+/
         FhlVTXitI/EFHZ3v68h5717rd2+YLzOrtCDAbNNu/GWj+nsfPfGqYqg87ZggHuCpzY32
         5MtJce+fLVbR+rgDni69BV7JEKwGgYATA1Kojfyz0nCpuAGnYd1euPUhYrK61IvkooxA
         ztug==
X-Forwarded-Encrypted: i=3; AJvYcCVmQXO2UAF0EKbIraSSu6nCRRRpJQFeJwIzyalKrZcNZGvl68zBMw6Nokj8rj/QNFg/jp2Mpw==@lfdr.de
X-Gm-Message-State: AOJu0YwxDRmDx7pSn1xrixrEUaie9PhUXmHianjjj0O2z6RleLcFD2zF
	w51/8R6iA+eeSDaFQ09l0vPxwlxWbpdlBcKwWIPEJ8+DO+Cxcbxg3OWxCKoh4n5VaAA=
X-Google-Smtp-Source: AGHT+IH5830bbAflf89ceSBjfvz2QyTtypl6RNXASgSBiH7VawjL500/q3wnovK4YVXacm49HTAneA==
X-Received: by 2002:aa7:8882:0:b0:776:32e0:248f with SMTP id d2e1a72fcca58-77f53a8d4d1mr2484287b3a.27.1758624016916;
        Tue, 23 Sep 2025 03:40:16 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARHlJd4jqTIqUoQfLXyYxyaZQvf+2NZyogq5+mC0uvfc1q8Jxg==
Received: by 2002:a05:6a00:7617:b0:77e:ce3:c5c8 with SMTP id
 d2e1a72fcca58-77e0ce3e5a7ls4083214b3a.1.-pod-prod-04-us; Tue, 23 Sep 2025
 03:40:15 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVUdnFQbs/C/fphG8UfJBJFe7XnGyoZSvY4DFQicF2jEEc4cXC/j4vag/xaRlwZ+A0Yf4dDVH35ZvrR7g==@gapps.redhat.com
X-Received: by 2002:a05:6a20:728f:b0:2b8:5f2d:9340 with SMTP id adf61e73a8af0-2cffedc6fe6mr3524085637.56.1758624014713;
        Tue, 23 Sep 2025 03:40:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1758624014; cv=pass;
        d=google.com; s=arc-20240605;
        b=i+VBNXKAxz7KU66mz3Xk07GIraWtWTWHN/H/hxsnwKnWiOHnVO28jQCY8dG8r8yUZX
         Jtr9kinYyAnlKseVLOl2zTSYe6Ivf9WhU785RO7YYujL8CAdYA1vm3ufyXHkCXGgH7dp
         4atgQpJRKYc2F9TW0qUvg9zGL13d+pMNw8AQ/31PL07Wpvp+YKr7EWuZW/ZWRzqZPixi
         Qrr20d3PbKJvOUSUs/Q10If2IFpErA+J/3SlrVOTOY+QGThyxicbJD1efT5qpL1utOeO
         3lIOdU2ZjF2rRy7EobZyefpXVX0xL1NJd/PJJN662RKqXF365DfPfXK7I4lSM1h3w2Qh
         4jYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:feedback-id:message-id:subject:from:to:date
         :dkim-signature:delivered-to;
        bh=wa2qZAeHVcSl5zePd9yU4NRogooCEBPfHTcqDF6gCNA=;
        fh=AXNZjH/ikmBqNPZoOQ6NPxFksrtYaqnihA22kp5aTsI=;
        b=gAyjp98fQo1iTCrrWMeaZzqQ680m60qpUijV/77bO6WHc1zeAIBE+G5D3GcD60BJNE
         oeqNLtXdRlOa357c3xuX7vml1whgsdXQPTi/LFlVwoK22zhaXFYJC+RXMdmo2bcPY2s8
         YJq2wR/2uq+i+pdfBemWm/zt+1KHaFM+VIBnbT2QJ7CPLiGc+uysN0gJHLNhAN+Iercv
         hj5CAyoZoVOAtWwDcMf6P9HBODdw95nV7BbJrZVbsc7JTygScU2+P4duoOJ2H2qEnC9G
         XYWGVOZvuIgmeEfQx5UOzekZk5tFrOnN0Sxc2oFOm6/rXavk4nsySf04EeUC/5gChtVs
         U0IQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=VzVoRVFo;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.18 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b555bab4079si1819090a12.487.2025.09.23.03.40.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 03:40:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.18 as permitted sender) client-ip=109.224.244.18;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-614-WWHjXCCPONGxJWGRqFNESQ-1; Tue,
 23 Sep 2025 06:40:06 -0400
X-MC-Unique: WWHjXCCPONGxJWGRqFNESQ-1
X-Mimecast-MFC-AGG-ID: WWHjXCCPONGxJWGRqFNESQ_1758624005
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B8C911800576
	for <blinux-list@gapps.redhat.com>; Tue, 23 Sep 2025 10:40:05 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B3D8E1956048; Tue, 23 Sep 2025 10:40:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B0E5019560BB
	for <blinux-list@redhat.com>; Tue, 23 Sep 2025 10:40:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 244EA19560B8
	for <blinux-list@redhat.com>; Tue, 23 Sep 2025 10:40:05 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1758624004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=wa2qZAeHVcSl5zePd9yU4NRogooCEBPfHTcqDF6gCNA=;
	b=VsSgeKQo+O2PsCcI/pmxQXfAFZWFbovCY1kvurXZlnK8nnUwkdsehBcwzIEC+h5sC2baZG
	CXZYjkEw+RziduiI6VgCLOeDd6YVSqq46nrCR7GAjVw/ieOyv6OhRRhnf1aRagXjsP3uO8
	C0PQLLrweDvNXVSHQFnBm8tybNlzB5pGNOc1vI7mt4ufjadPBNElcHhwj4Y+rUo2gShgDL
	mZ3Jz3jwmRKwcToI3rQgULgopVDHV5uk4hMlI08raxBiAdZeu+kHxjDKCuhzcn7XNmgv+l
	sBuoKsYvfTHpN4qT7ex3BuBGhmwafmcgvWFjMyyJfiAUqPcQDRfHN9wUR3Ugog==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1758624004; a=rsa-sha256;
	cv=none;
	b=KDWPmyaGrUsvW6YgT2fss5OoNKqcp8+Rx/zORRNpMjf8VMVRQhodCa9E2U3+WMfuUWCeeB
	uMNhKeAjWtYBfk1oHsTiyC0Seow7eJH/sG4sell46lgzRP1CwW5zvigU5KbNsNLPKaAtuM
	bsAJL5zJXvCqzuFXzpviy2Isqucgp0f64NSVFuM/2d6RGmhxRoVshtUtmcM1F0taOKTsao
	prppFzHbTYYtaB4lV63GC381cFER/SvFritM7LToHh7paEtpaO7RU/bOHpN4J/DD02S10j
	fr4aVL1kydqqhcRk8RBsDGff1L2DGsrkdVLWEgVFtEzBuKBDIuJtateZd+KR3w==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=VzVoRVFo;
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	spf=pass (relay.mimecast.com: domain of rastislav.kish@protonmail.com designates 109.224.244.18 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch
 [109.224.244.18]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-359-QBiBfXRuPCWCUUpIsfKLKQ-1; Tue, 23 Sep 2025 06:40:01 -0400
X-MC-Unique: QBiBfXRuPCWCUUpIsfKLKQ-1
X-Mimecast-MFC-AGG-ID: QBiBfXRuPCWCUUpIsfKLKQ_1758624000
Date: Tue, 23 Sep 2025 10:39:54 +0000
To: orca@freelists.org, Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: A Gnome developer looking for a11y feedback to improve the Gnome experience
Message-ID: <625b6692-6ea2-4f41-8536-6d9c94cb5848@protonmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: b57c3e96232a2c72b9a792bd70de18c43cccf105
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: S8jksLofzgkfrTM2FcshiOhLNPirmjJj7JUUwtdMx7k_1758624000
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative;
 boundary="b1=_vVBVzlJq3vz6zIb4YHzhaMIkfGLAi9efKRbVjNc"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@protonmail.com header.s=protonmail3
 header.b=VzVoRVFo;       arc=pass (i=1 spf=pass spfdomain=protonmail.com
 dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com
 designates 109.224.244.18 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
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

--b1=_vVBVzlJq3vz6zIb4YHzhaMIkfGLAi9efKRbVjNc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello lists,

forwarding a post of one of the Gnome=E2=80=99s volunteers who would like t=
o work on improving the a11y of the DE, and is looking for feedback from Or=
ca users.

https://www.reddit.com/r/linux/comments/1nnos0f/are_there_any_orca_screen_r=
eader_users_on_this/

I=E2=80=99m myself waiting currently until Gnome 49 lands in the stable Tum=
bleweed repos, so I can review and comment on the latest updates. But I kno=
w there are several long-time very experienced Gnome users on our lists who=
=E2=80=99ve already received the 49 update, so someone could be even faster=
 than me.

There is also some very interesting a11y development of the Gnome Calendar,=
 and the devs behind it are also looking for Orca users feedback, see:

https://www.reddit.com/r/linux/comments/1mc83d0/gnome_calendar_a_new_era_of=
_accessibility/

Best regards

Rastislav

&#8203;

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1=_vVBVzlJq3vz6zIb4YHzhaMIkfGLAi9efKRbVjNc
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
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Hello lists,</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">forwarding a
        post of one of the Gnome=E2=80=99s volunteers who would like to wor=
k on
        improving the a11y of the DE, and is looking for feedback from
        Orca users.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;"><a href=3D"https=
://www.reddit.com/r/linux/comments/1nnos0f/are_there_any_orca_screen_reader=
_users_on_this/" class=3D"moz-txt-link-freetext">https://www.reddit.com/r/l=
inux/comments/1nnos0f/are_there_any_orca_screen_reader_users_on_this/</a></=
p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">I=E2=80=99m myse=
lf
        waiting currently until Gnome 49 lands in the stable Tumbleweed
        repos, so I can review and comment on the latest updates. But I
        know there are several long-time very experienced Gnome users on
        our lists who=E2=80=99ve already received the 49 update, so someone
        could be even faster than me.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">There is also
        some very interesting a11y development of the Gnome Calendar,
        and the devs behind it are also looking for Orca users feedback,
        see:</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;"><a href=3D"https=
://www.reddit.com/r/linux/comments/1mc83d0/gnome_calendar_a_new_era_of_acce=
ssibility/" class=3D"moz-txt-link-freetext">https://www.reddit.com/r/linux/=
comments/1mc83d0/gnome_calendar_a_new_era_of_accessibility/</a></p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Best regards</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Rastislav</p>
    </div>
    <div class=3D"mdhr-raw" style=3D"height:0;width:0;max-height:0;max-widt=
h:0;overflow:hidden;font-size:0;padding:0;margin:0;" aria-hidden=3D"true" t=
itle=3D"MDH:PHA+SGVsbG8gbGlzdHMsPC9wPjxwPmZvcndhcmRpbmcgYSBwb3N0IG9mIG9uZSB=
vZiB0aGUgR25vbWUncyB2b2x1bnRlZXJzIHdobyB3b3VsZCBsaWtlIHRvIHdvcmsgb24gaW1wcm=
92aW5nIHRoZSBhMTF5IG9mIHRoZSBERSwgYW5kIGlzIGxvb2tpbmcgZm9yIGZlZWRiYWNrIGZyb=
20gT3JjYSB1c2Vycy48L3A+PHA+aHR0cHM6Ly93d3cucmVkZGl0LmNvbS9yL2xpbnV4L2NvbW1l=
bnRzLzFubm9zMGYvYXJlX3RoZXJlX2FueV9vcmNhX3NjcmVlbl9yZWFkZXJfdXNlcnNfb25fdGh=
pcy88L3A+PHA+PGJyPjwvcD48cD5JJ20gbXlzZWxmIHdhaXRpbmcgY3VycmVudGx5IHVudGlsIE=
dub21lIDQ5IGxhbmRzIGluIHRoZSBzdGFibGUgVHVtYmxld2VlZCByZXBvcywgc28gSSBjYW4gc=
mV2aWV3IGFuZCBjb21tZW50IG9uIHRoZSBsYXRlc3QgdXBkYXRlcy4gQnV0IEkga25vdyB0aGVy=
ZSBhcmUgc2V2ZXJhbCBsb25nLXRpbWUgdmVyeSBleHBlcmllbmNlZCBHbm9tZSB1c2VycyBvbiB=
vdXIgbGlzdHMgd2hvJ3ZlIGFscmVhZHkgcmVjZWl2ZWQgdGhlIDQ5IHVwZGF0ZSwgc28gc29tZW=
9uZSBjb3VsZCBiZSBldmVuIGZhc3RlciB0aGFuIG1lLjwvcD48cD48YnI+PC9wPjxwPlRoZXJlI=
GlzIGFsc28gc29tZSB2ZXJ5IGludGVyZXN0aW5nIGExMXkgZGV2ZWxvcG1lbnQgb2YgdGhlIEdu=
b21lIENhbGVuZGFyLCBhbmQgdGhlIGRldnMgYmVoaW5kIGl0IGFyZSBhbHNvIGxvb2tpbmcgZm9=
yIE9yY2EgdXNlcnMgZmVlZGJhY2ssIHNlZTo8L3A+PHA+aHR0cHM6Ly93d3cucmVkZGl0LmNvbS=
9yL2xpbnV4L2NvbW1lbnRzLzFtYzgzZDAvZ25vbWVfY2FsZW5kYXJfYV9uZXdfZXJhX29mX2FjY=
2Vzc2liaWxpdHkvPC9wPjxwPjxicj48L3A+PHA+QmVzdCByZWdhcmRzPC9wPjxwPjxicj48L3A+=
PHA+UmFzdGlzbGF2PC9wPjxwPjxicj48L3A+PHVsIGNsYXNzPSJkcm9wZG93bi1tZW51IHRleHR=
jb21wbGV0ZS1kcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7IHBvc2l0aW9uOiBhYnNvbH=
V0ZTsgei1pbmRleDogMTAwMDsiIGNvbnRlbnRlZGl0YWJsZT0iZmFsc2UiIHBvcG92ZXI9ImF1d=
G8iPjwvdWw+">&amp;#8203;</div>
 =20

</body></html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1=_vVBVzlJq3vz6zIb4YHzhaMIkfGLAi9efKRbVjNc--

