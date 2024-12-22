Return-Path: <blinux-list+bncBCNLZ3P6ZIDRB7OBUG5QMGQEO2MVR4I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 474E69FA79E
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 19:57:03 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d884999693sf56639386d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 10:57:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734893822; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ufj7Idxw0nhKL/4UlKvx3TeAIlIFg/D4a0YK9NMRDdjmeB27LfZMQkohy8ywEMFbt1
         b0Vvbd0DEXCVmK0sqPU8XdN6mN2vb4heq6HkSq+GjqXEHXe+EvY8un2nqIxcJloDi0in
         OxKERpvFNOG3LBd6iNCN8lG57QIUxFS+tGBsuDsvu2cRt7agmlkiGDm8SgwOTilSUGoB
         lDiCO60Asyc11BZffviG93OBAVTPHjb9BII72J9w0oVR7uoHG+hGNpwpuJiUyRoCnRM8
         0pDKFQn4RrOmKgEO7zhv8D+gC5BwO8SrxRTJj1lS1HnXUjf03Ff7T5cqKAwivHCBJF40
         QPaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=D31bFQespebUzObbdtZwwgfTRPqjMbZzzj4smPGXVn8=;
        fh=OCsEjQH/hG71WrhRhXlKdTkv3y+ErE20WRjv7BRVH8Y=;
        b=QrQQV+z4kvyj+gSg3pxPlsWlK9GziwgctNCO/k++QxI4RKS/0GJr84ZgGS1SRTMy3+
         qrENFn0FWEnW7Le1ZkcTRmLGDi4fLXqCC3DPC92BQd9/KiqpZKBnw0F4tV5rcIJnxxuE
         hmk5KNQgtJ25DnGIreiLecXuNZbJgIHkuP/Dc7EvZPy4FbzuMPLsoso1MIeqJUEkhICF
         Byb5AbuRFeK1H0+ApnMFV3Ylluzd1jlg9Y/nHDjXiUSneE4CWI/a1nnpZEI0KOo8ZlCN
         xi1vmn0I6L2FxatLzLqB99od9XY4vrP3pbtAJqyIbquV9TIoJAcLgGMjffQJNBycGAev
         cD6A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.182 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734893822; x=1735498622;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D31bFQespebUzObbdtZwwgfTRPqjMbZzzj4smPGXVn8=;
        b=CYOjF36VXvWdtwXgsjE3tSyWg0y/u5Yo8P91b9NXByIT7Xmon6Sg16XsFPNTdvNNyZ
         yGaUyRbq4HRNl36OyMelBKmFMSuZaSVmbR/Mo4wSfIyFk24N5F3ZRMkIlR9W0C3lDXy1
         kobReZiI1pKhbsAN8T4UORP5AAPicIVhA5+P5CMwONaFda6h0q695rI9GaUehT21kp5K
         d1wwUFASDosK51Rsy9XG9bn8FM/lupNKT8qe6V1HDTzkZVR2WtWdMsa/tS5cmrfMMPM9
         aPfUAPJMsAe8yAKOYwkEsqKmocfoccEfS5qowdVdiORO0xQ72dN0yPDeaMa7U7fLXqdO
         IWow==
X-Forwarded-Encrypted: i=2; AJvYcCXz4l1uVqPlB0Eck97akMm8Klc1Z42+e46M7wvOHVIYn6F/OXncvtaEcyz9FxfkobzSqzNMGQ==@lfdr.de
X-Gm-Message-State: AOJu0YxecmlAyEWTkso8goS8Fgjh50CqFDX3VR9GGPY2d5Fx7cnvaRiN
	lCiyC7G5DdXHOYVj7gHX7WR1HC+fY67jQm0tfSLukj1l6ptVXcUGoMDdZ1YvwGo=
X-Google-Smtp-Source: AGHT+IEp1GSfFmhzESZyV+hJIrK4lyTBe7OQA+1wsDWciIozkFBfFo9OimqfaCFtzEKSd1w4yy38iA==
X-Received: by 2002:a05:6214:19ec:b0:6d8:9f61:de8c with SMTP id 6a1803df08f44-6dd23358150mr155055156d6.27.1734893822078;
        Sun, 22 Dec 2024 10:57:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:d78c:0:b0:6d9:797:e17f with SMTP id 6a1803df08f44-6dd15492ae0ls32082226d6.2.-pod-prod-03-us;
 Sun, 22 Dec 2024 10:57:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVYzK/FSUXgcQqWXmkJ600E3+z9BwiuCOe/ouUGoG1RkxaOAUX7iFXKsgfjGdQ0LXaAUWcAxbIJdVE+vg==@gapps.redhat.com
X-Received: by 2002:a05:6214:268f:b0:6d8:a5da:3aba with SMTP id 6a1803df08f44-6dd2334646amr157068076d6.20.1734893821152;
        Sun, 22 Dec 2024 10:57:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734893821; cv=none;
        d=google.com; s=arc-20240605;
        b=ljwwSrY9wv6C0fsIDh4u6ANaj7CrbRwCe6hGi7P6NqzeZgdSGQ3VUgy8pgECG6EFCN
         Oc6cUOdU/GArrSdqb9yJUXM9EM10SjaXhTi0sHATzZWPxVg9Y4YDR2/IUlcaY5Ha8j6n
         vt7nheyif7lzIRVPDyn9IPwUFEVaYZMkbYLxHAln9bQ4knfxVavReSXISmYUexYwE1cq
         MYqFkGDguOWS1N7z3n3UAq11/YyH0+xrKriZ4qH+/pjWjura5WZS0bh0aNwyILCWXSPm
         vyvAm88tsRtnyc7kz/JO44UQHArK6ljwuvjpM/otO5SX65DmKHTxMVpXTgnDFMc3sKc3
         rNyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=xRugGSuULtQAFi2JIKLIt0RiY9rWlpuzPP6WgABlCdk=;
        fh=EnmT/XM52Cw5dKgKwAcAwrWfgpvmbC8BORRziwvcwVE=;
        b=GRUJUzsfFSGp/kix/nAa7kWvMoL93f6Y48ZcC86oB2eGoB4PdcgL+RgI3ErToxdsHf
         DfRGC996Zah+rthhfTj6HUsO6A3265ijLOXlsIPGinsiO/PPJOondVYhnb2AaCH36nEr
         Q3Ioj3G/MsQTiUUQZlFhQdO9veTc94JBGat4fAIpyhV9Vk6pbrHZot9JMhK190YfCvyj
         hEgvjfPnenxXqfQfHXTX4oUCW1f9bxOi6wJguUsFjLWdK+kd80cS7YSMggyzEV0VJA3i
         ChcIWIJ517EaoqV5rM2Ks3bIOh2WBOi9mKaOJVCa7WgLvpi9RPeqwp9QbZSKPSryxHEe
         GW0A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.182 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1835aaeesi98036176d6.455.2024.12.22.10.57.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 10:57:01 -0800 (PST)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.182 as permitted sender) client-ip=209.85.128.182;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-4PehaFIdPVazM9wLpdNZ4g-1; Sun,
 22 Dec 2024 13:56:59 -0500
X-MC-Unique: 4PehaFIdPVazM9wLpdNZ4g-1
X-Mimecast-MFC-AGG-ID: 4PehaFIdPVazM9wLpdNZ4g
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D490B19560AA
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 18:56:58 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B259A19560AD; Sun, 22 Dec 2024 18:56:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AFAD919560AA
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:56:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 15E5919560A2
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:56:58 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com
 [209.85.128.182]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-gZFiM6_NOE2QyE03z9MSjw-1; Sun, 22 Dec 2024 13:56:55 -0500
X-MC-Unique: gZFiM6_NOE2QyE03z9MSjw-1
X-Mimecast-MFC-AGG-ID: gZFiM6_NOE2QyE03z9MSjw
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6eff8289d0eso30923567b3.0
        for <blinux-list@redhat.com>; Sun, 22 Dec 2024 10:56:55 -0800 (PST)
X-Gm-Gg: ASbGncssxRKTqDstEsChVMXLndJVeft28tZN8tsfuDgntey0GO4Fa/uUkBHhXdXsgfD
	nLC6whHkq9SXqDHJVLpQoGWedZcWCpdoC7zQ=
X-Received: by 2002:a05:690c:6382:b0:6ef:5262:c390 with SMTP id
 00721157ae682-6f3f8216bd3mr71364327b3.33.1734893814802; Sun, 22 Dec 2024
 10:56:54 -0800 (PST)
MIME-Version: 1.0
References: <Z2hB3hnS-T8uW2DC@panix.com> <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi>
 <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com> <Z2haInMLi9tm7Fjy@panix.com>
In-Reply-To: <Z2haInMLi9tm7Fjy@panix.com>
From: jace Kattalakis <khalfang1366@gmail.com>
Date: Sun, 22 Dec 2024 18:56:44 +0000
Message-ID: <CAC9uDhYWn_wo9j+RnS9n8n3bcPcJxnvnqnhZentrsBr0uaQjYg@mail.gmail.com>
Subject: Re: youtube issues
To: Rudy Vener <salt@panix.com>
Cc: blinux-list@redhat.com
X-Mimecast-MFC-PROC-ID: 5k6n6aiRE8QPqKQ1dAvqmGlf9Nl5ie2C7i22WSN6jNQ_1734893815
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Acrj8-8lAlRawmwkYy2MqV62K2fiIDnCSGuFnRahwuk_1734893818
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="0000000000008df01a0629e07196"
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.128.182 as permitted
 sender) smtp.mailfrom=khalfang1366@gmail.com
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

--0000000000008df01a0629e07196
Content-Type: text/plain; charset="UTF-8"

For me, using Freetube under Wayland with KDE on NixOS, it works fine, but
I can't seem to get any playlists working at all, as in, I can go into the
search filters, set the playlists as the only result type, and hit return.

Nothing is shown, at all. pipe-viewer gives the same results as Youtube
itself

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--0000000000008df01a0629e07196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For me, using Freetube under Wayland with KDE on NixO=
S, it works fine, but I can&#39;t seem to get any playlists working at all,=
 as in, I can go into the search filters, set the playlists as the only res=
ult type, and hit return.<br><br></div><div>Nothing is shown, at all. pipe-=
viewer gives the same results as Youtube itself<br></div><br><br></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--0000000000008df01a0629e07196--

