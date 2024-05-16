Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBL4SS6ZAMGQE2WFV6PI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E988C7344
	for <lists+blinux-list@lfdr.de>; Thu, 16 May 2024 10:52:01 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-43e40216800sf3471291cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 16 May 2024 01:52:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715849520; cv=pass;
        d=google.com; s=arc-20160816;
        b=nKc/QCwAxIllBqQ531ZeAv/ZfDvK6O4gXQ4dcRqq/HyrIVlUlbi4D1canIS7AqSqa2
         zcngpwbbIB9KsG2vdXncC8+V7Dv03lGy57eyARJRVC9V/mLj/bJSIyv1Ygd8/DkjbV1U
         j2dB4J3KPmwxgfuBjnLZsrq/PKR6I03Oas4a3joVBTBRkJ6Gb19mBeTZVYxWSCVc2rB4
         0MMq2iBxvDbNwRlskXfZD6UmU/wUDOQ7+ttTAXFt2p9+QxjVdI3jvkcVTR1DVzqI9gu/
         P4GPnrOPpA1WOVMjufCtvrCEHIhKV1bUPSBNepkOYOuLDj4pEqWyNMj8QtgBeskwfRG4
         ktZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:delivered-to;
        bh=voqJeFbNErhP21f+WdfvQf35fuyUJ3Jy2KJS6NG5Ev4=;
        fh=QIYi9cI+N4xPfr0e2yVhfxOeSWt1sva9K8eekQRP8dU=;
        b=J4rGFbBvIYFJLf5lp7C0R5emQUsry7Hqmu6oiN2RdZy2XEivx54IzvsF0qT8OUDeLY
         UMrfXYrV4MFY2KzX3/9sEi4fbGxrAbQjKvNmct/mU2lP30FUqUh8yjh+YIqGHwxfYs+C
         71aQzqWRqrZSFiXlBh/tgy8iurUwY+CZ6L8N3qZ8sO3lTpZpPe3QOLXRn/6sZs5wvQBL
         yZAuyqCnffCFSX+B8IZlI/KBKTDyWcmov6mIhu/HtKYKxXLgVhjrBzCmpFXGYFRpdekK
         wDcYCpVsoBxJgVtSGPUK1PwY1oJ1tzo3XkySAMiF78KUP1wyJYmnthBXckCsQXUvY7Fb
         kI4g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.178 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715849520; x=1716454320;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=voqJeFbNErhP21f+WdfvQf35fuyUJ3Jy2KJS6NG5Ev4=;
        b=SMp33XVoD5bhF5AI85o8vE/uNp83Gbo2LnxUrkKcoCMueKSBnachsLbQcszEeJV7SC
         jYqmHDmTeRqnM0DlE7RCRtuwXEMA2ze2jeE9eICaTEOqgSBt6axgTNVCP3sdEyNZemrk
         dPk9Rho5QsKj13kV+jMCRCKDRCeqT2npaEPmIZrefcaRVbRqByElHxlkathTuU4it3jR
         h1vdFkgjOkhdQRtG1DueqxxhE0KbcubOaH0ohjSX3XvtuPRXDscu09XvBoN27ikJ44gN
         JkqNonqL35u4PtOysdI2i/2o8R+VlTtWyuWLkhhRnq9rVKxDgZkPAChrY3S74ZnFEBWm
         5gvw==
X-Forwarded-Encrypted: i=2; AJvYcCWk4QBdHd/0FJz8FRcUE2gENCF1XR+1Snsr501UVTQN4t6z+8HkcMUGgGbGg3QHTjHPLmd9mNgUr2B08UmEGQLWlIRnauxoTLjH
X-Gm-Message-State: AOJu0Ywus001mX/XF1QhNvQJ6KMvHdC3E7uRLAC4PyxFr0K43Hgkdw9B
	tvXjfVidcovkf1opF0D0ejQRI3P2LUlKAdIUzVqZSTccphC9xvNFZ9sdngzu3RQ=
X-Google-Smtp-Source: AGHT+IGAt+zvbBvIZEeE70KKErIegyEc4MF5BF+ExHC2OJmzsN/XRj+pERe7e/f1Cw+aAoY2aKBmRA==
X-Received: by 2002:a05:622a:19a2:b0:43a:bcd9:5d5d with SMTP id d75a77b69052e-43dfdaab848mr180805141cf.19.1715849519952;
        Thu, 16 May 2024 01:51:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:199b:b0:43e:3c74:bf7a with SMTP id
 d75a77b69052e-43e3c74c25cls7240971cf.1.-pod-prod-06-us; Thu, 16 May 2024
 01:51:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVz1I56+CK5Soxsa6Ew1NbSfNLCMI+XVs0Ye4JsxwxJGg6L9PIDcqi4t1BJNwvvfNTK+YjlTlbjDcNukSOaSVIh12SBvbKoHm+4qM3l
X-Received: by 2002:a05:622a:8b:b0:43a:be31:10ab with SMTP id d75a77b69052e-43dfda8eafamr183777531cf.5.1715849519132;
        Thu, 16 May 2024 01:51:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715849519; cv=none;
        d=google.com; s=arc-20160816;
        b=CTf5Zv6n0jMF14DkdrMpxosPXk+Tb7UoaQCYiOT9oPvpLbbY4cdc6xfmqUOHxSyvpS
         6CkiP3yGNu330QIPFqGbnt3Ow+wiFGGxrnzN2LRrrxbAhe08K/DUr2Yk2HqWE5gARSqi
         TyRxP9Y0uUsCWEy7tc+rwLTG3Z8MeaxOkRPKx9dQYs/RGtoHRbEvj5LjRvS8iQxyN5/M
         maXqTlS3Ab/mAjNrfa2baV41Gth590oq2vMf02+oAMWSKNzYg+NFzT6vZX1a28/R44tk
         VS5sD6FwsyC1wzBeCDEP6bHXNO5Opvr4JIfVGlHFzdMQpQcRqlmnRPy8iqxyskNauDgz
         odMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:delivered-to;
        bh=FaKIVy3aAtSpMgbUs+NW3cxEFQihUJosVXl8hykqTk4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=oMwvapW2R6Af5583Dm9D/beOBf3IEiKUuxn8gW2Mpc2UulGCCTtvNokamQXtG+r76p
         yGHSNSoNGB84qFfVu8dW3pHB6ljjnvb60iFPEm6ijma6jTqz0Z4vlENaV/1dwn8zgl7k
         etvopkryszZk8I50DBL8h6/xKYPcLTr74wWBLxd8sXzGJZBUsBGwbY2V8JhStjwL/78V
         G5XYLCBeeaid7LoyQx6TfM75xezrwGcfGkzBGx1FEok9sTVI32I93x05US9F74wVoIz1
         4fw10ujkUub4y9Ouh49/JI3xlmL+39hfShLVVQdcIJn8I4S9FARzOXf6+NsR16o5EBvA
         fYUA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.178 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-43df54b57edsi153953701cf.195.2024.05.16.01.51.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 01:51:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.178 as permitted sender) client-ip=209.85.219.178;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-382-YDYVInvEMKm2gIQPZt-YiQ-1; Thu, 16 May 2024 04:51:52 -0400
X-MC-Unique: YDYVInvEMKm2gIQPZt-YiQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6833880118E
	for <blinux-list@gapps.redhat.com>; Thu, 16 May 2024 08:51:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 64B8040C6CB7; Thu, 16 May 2024 08:51:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B80A40C6EB7
	for <blinux-list@redhat.com>; Thu, 16 May 2024 08:51:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB4638001F7
	for <blinux-list@redhat.com>; Thu, 16 May 2024 08:51:51 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
 [209.85.219.178]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-138-7Gul0KzhP8y0Nd1X1I16UA-1; Thu, 16 May 2024 04:51:29 -0400
X-MC-Unique: 7Gul0KzhP8y0Nd1X1I16UA-1
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-de6074a464aso7800000276.0
        for <blinux-list@redhat.com>; Thu, 16 May 2024 01:51:29 -0700 (PDT)
X-Received: by 2002:a25:8884:0:b0:de4:6e3c:913f with SMTP id
 3f1490d57ef6-dee4f2eabe2mr16219400276.37.1715849488838; Thu, 16 May 2024
 01:51:28 -0700 (PDT)
MIME-Version: 1.0
From: jace Kattalakis <khalfang1366@gmail.com>
Date: Thu, 16 May 2024 09:51:18 +0100
Message-ID: <CAC9uDhb1dtJqbniKd=7w6nn_XZ20h0sV9-nnrNf+2W35jUvw_g@mail.gmail.com>
Subject: Booting from USB stik via CLI, possible?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="00000000000045371006188e57e8"
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.219.178 as permitted
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

--00000000000045371006188e57e8
Content-Type: text/plain; charset="UTF-8"

So this is something I'm wondering. Is it possible to have a USB stick be
booted from via the terminal? I checked efibootmgr and it has two entries
so logially that'd mean I just go down three or four times in the boot menu
and then go from there.

Or can I somehow tell the system to go and reboot and load the stick? if it
helps it is a Ventoy stick which I'm trying to do this with though so I'm
not sure how that affects things

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--00000000000045371006188e57e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So this is something I&#39;m wondering. Is it possibl=
e to have a USB stick be booted from via the terminal? I checked efibootmgr=
 and it has two entries so logially that&#39;d mean I just go down three or=
 four times in the boot menu and then go from there.<br><br></div><div>Or c=
an I somehow tell the system to go and reboot and load the stick? if it hel=
ps it is a Ventoy stick which I&#39;m trying to do this with though so I&#3=
9;m not sure how that affects things<br></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--00000000000045371006188e57e8--

